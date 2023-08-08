import openai
from input_output_FOLIO import *
import time
import json
import random
import datetime
import os
import utils


# MODEL = "gpt-3.5-turbo"
MODEL = "gpt-4"
# MODEL = "text-davinci-003"
seed = 2024
# openai.organization = "org-xxx"
openai.api_key = "sk-xxx"
# openai.organization = utils.openai_bob_joy_organization
# openai.api_key = utils.openai_fake_api_key
openai.api_key = utils.openai_api_key
openai.organization = utils.openai_edinburgh_organization
split_formalization_and_proof = False
use_COT = True
use_COT_in_all = True
add_comment_and_use_COT= True

if not split_formalization_and_proof:
    prompt_inputs = [example_true_textual_input, example_false_textual_input, example_unknown_textual_input]
    if not use_COT_in_all:
        prompt_outputs = [example_outputs_True, example_outputs_False, example_outputs_Unknown]
    else:
        if not add_comment_and_use_COT:
            prompt_outputs = [example_outputs_True, example_outputs_False, example_outputs_Unknown]
        else:
            prompt_outputs = [example_outputs_True, example_outputs_False, example_outputs_Unknown]
else:
    prompt_inputs = [example_true_textual_input + '\n---\n' + example_outputs_True, \
                     example_false_textual_input + '\n---\n' + example_outputs_False, \
                     example_unknown_textual_input + '\n---\n' + example_outputs_Unknown]
    if not use_COT:
        prompt_outputs = [example_outputs_True, example_outputs_False, example_outputs_Unknown]
    else:
        prompt_outputs = [example_outputs_True, example_outputs_False, example_outputs_Unknown]
proof_writer_answer_map = {"True": "A", "False": "B", "Unknown": "C"}


def data_generation_FOLIO(filename):
    qa_pairs = []
    # open jsonl file

    json_list = json.load(open(filename))
    for d in json_list:
        theory = d.get('context').strip()
        question = d.get("question").strip()
        answer = d.get("answer")
        real_question = theory + "\nQuestion: " + question
        qa_pairs.append((real_question, answer))
    random.seed(seed)
    random_qa_pairs = random.sample(qa_pairs, 50)
    random_qa_pairs_new = random.sample(qa_pairs, 300)
    temp_random_qa_pairs = []
    for item in random_qa_pairs_new:
        if item not in random_qa_pairs:
            temp_random_qa_pairs.append(item)
    random_qa_pairs = random_qa_pairs[:5]
    return temp_random_qa_pairs


def data_generation_logiclm(json_file):
    d = json.load(open(json_file, 'r'))
    qa_pairs = []
    random.seed(seed)
    for item in d:
        qa_pairs.append((item['context'], item['question'], item['answer']))
    random_qa_pairs = random.sample(qa_pairs, 100)
    return random_qa_pairs

def data_generation_folio(json_file):
    d = json.load(open(json_file, 'r'))
    qa_pairs = {}
    random.seed(seed)
    for item in d:
        if item['context'] not in qa_pairs:
            qa_pairs[item['context']] = []
        qa_pairs[item['context']].append((item['question'], item['answer']))
    # random_keys = random.sample(list(qa_pairs.keys()), 50)
    random_keys = list(qa_pairs.keys())
    random_result_pairs = [qa_pairs[key] for key in random_keys]
    res, prompts = [], [example_true_textual_input.split('\n')[0], example_false_textual_input.split('\n')[0], example_unknown_textual_input.split('\n')[0]]
    for i in range(len(random_result_pairs)):
        if "Textual context: " + random_keys[i] not in prompts:
            res.append((random_keys[i], random_result_pairs[i]))
    res = res[: 30]
    return res


def run_prompt(random_qa_pairs):
    # make a folder to store the outputs and config files, make sure the folder contain current timestamp and model name
    timestamp = datetime.datetime.now().strftime('%Y_%b_%d_%H_%M_%S')
    folder_name = timestamp + '_' + MODEL
    os.mkdir(folder_name)

    # dump the prompt to a file
    write_file = open(folder_name + '/prompt.txt', 'w')
    write_file.write("System message:\n")
    write_file.write(system_message + "\n\n")
    for i in range(len(prompt_inputs)):
        write_file.write("Example " + str(i + 1) + ":\n")
        write_file.write("Input:\n" + prompt_inputs[i] + "\n\n" + "Output:\n" + prompt_outputs[i] + "\n\n")
    write_file.close()

    # dump the config to a json file
    divinci_config = {
        "temperature": 0,
        "top_p": 1.0,
        "frequency_penalty": 0.0,
        "presence_penalty": 0.0,
        "stop": "\n------------",
        "max_tokens": 512,
    }
    gpt_config = {
        "temperature": 0,
        "top_p": 1.0,
    }
    with open(folder_name + '/config.json', 'w') as json_file:
        if MODEL == 'text-davinci-003':
            json.dump(divinci_config, json_file)
        elif MODEL.startswith('gpt'):
            json.dump(gpt_config, json_file)

    # make a json file to store the random_qa_pairs and its corresponding outputs
    for i in range(1, 2):
        try:
            qa_pair = random_qa_pairs[i]
            if not split_formalization_and_proof:
                prompt_input = "Textual context: " + qa_pair[0]
                for j in range(len(qa_pair[1])):
                    prompt_input += "\nQuestion " + str(j + 1) + ": " + qa_pair[1][j][0]
            else:
                temp_d = json.load(open("2023_Jul_29_01_30_56_gpt-4_baseline/output_" + str(i) + ".json"))
                prompt_input = "Textual context: " + qa_pair[0] + "\n" + "Question: " + qa_pair[1] + '\n---\n' + \
                        temp_d["output"].split("theorem")[0]
            if MODEL == "text-davinci-003":
                prompt = "Task Description: " + system_message + "\n\n------------" + "Input:\n" + prompt_inputs[0] + "- - - - - - - - - - - -" + prompt_outputs[0] + '\n------------' + \
                            "Input:\n" + prompt_inputs[1] + "- - - - - - - - - - - -" + prompt_outputs[1] + '\n------------' + \
                            "Input:\n" + prompt_inputs[2] + "- - - - - - - - - - - -" + prompt_outputs[2] + '\n------------' + \
                            "Input:\n" + prompt_input + "- - - - - - - - - - - -"
                response = openai.Completion.create(
                    model=MODEL,
                    prompt=prompt,
                    temperature=divinci_config["temperature"],
                    max_tokens=divinci_config["max_tokens"],
                    stop=divinci_config["stop"],
                    presence_penalty=divinci_config["presence_penalty"],
                    frequency_penalty=divinci_config["frequency_penalty"],
                    top_p=divinci_config["top_p"],
                )
                res = response['choices'][0]['text'].strip()
            elif MODEL == 'gpt-4' or MODEL == 'gpt-3.5-turbo':
                response = openai.ChatCompletion.create(
                    model=MODEL,
                    messages=[
                        {"role": "system", "content": "Task Description: " + system_message + '\nI will give you some examples'},
                        {"role": "user", "content": "Input:\n" + prompt_inputs[0] + "\n\nOutput:\n" + prompt_outputs[0]},
                        {"role": "user", "content": "Input:\n" + prompt_inputs[1] + "\n\nOutput:\n" + prompt_outputs[1]},
                        {"role": "user", "content": "Input:\n" + prompt_inputs[2] + "\n\nOutput:\n" + prompt_outputs[2]},
                        {"role": "assistant", "content": "Now give me the result for this input: Input:\n" + prompt_input + "\n\nOutput:\n"},
                    ],  
                    temperature=gpt_config["temperature"],
                    top_p=gpt_config["top_p"],
                )
                res = response["choices"][0]["message"]["content"].strip()
            json_file = open(folder_name + '/output_' + str(i) + '.json', 'w')
            predicted_answer = proof_writer_answer_map[res.strip().split('\n')[-1].split(' ')[-1]]
            d = {"input": prompt_input, "input_tokens": response["usage"]["prompt_tokens"], "output": res, "output_tokens": response["usage"]["completion_tokens"], \
                 "pred_answer": predicted_answer, "gt_answer": qa_pair[-1], "problem_id": i}
            print("This is problem: " + str(i) +  ". The predicted answer is: " + predicted_answer + ", The GT answer is: " + str(qa_pair[-1]))
            json.dump(d, json_file, indent=4, ensure_ascii=False)
            json_file.close()
            write_file = open(folder_name + '/output_' + str(i) + '.lean', 'w')
            write_file.write(res)
            write_file.close()
        except Exception as e: 
            print(e)
            print("Error in problem: " + str(i) + ".")


if __name__ == "__main__":
    start_time = time.time()
    # select random questions from proofwriter OWA depth-5 dataset, to use it, download it from https://allenai.org/data/proofwriter
    # random_qa_pairs = data_generation_proofwriter(filename='proofwriter-dataset-V2020.12.3/OWA/depth-5/meta-test.jsonl')
    # FOLIO_dev_qa_pairs = data_generation_folio("data/FOLIO/dev.json")
    FOLIO_train_qa_pairs = data_generation_folio("data/FOLIO/train.json")
    run_prompt(FOLIO_train_qa_pairs)
    print("Time elapsed: ", time.time() - start_time)

