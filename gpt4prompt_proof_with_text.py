import openai
from input_output import *
import time
import json
import random
import datetime
import os
import key


# MODEL = "gpt-3.5-turbo"
MODEL = "gpt-4"
seed = 2024
openai.organization = "org-xxx"
openai.api_key = "sk-xxx"
openai.organization = key.openai_organization
openai.api_key = key.openai_api_key
prompt_inputs = [example_inputs2 + '\n\n' + example_inputs2_short_proof, example_inputs3 + '\n\n' + example_inputs3_short_proof, \
                 example_inputs4 + '\n\n' + example_inputs4_short_proof, example_inputs5 + '\n\n' + example_inputs5_short_proof]
# prompt_outputs = [example_outputs2, example_outputs3, example_outputs4, example_outputs5]
prompt_outputs = [example_outputs2_short_proof, example_outputs3_short_proof, example_outputs4_short_proof, example_outputs5_short_proof]


def data_generation_proofwriter(filename):
    qa_pairs = []
    # open jsonl file
    with open(filename, 'r') as json_file:
        json_list = list(json_file)
        for l in json_list:
            d = json.loads(l.strip())
            theory = d.get('theory')
            questions = d.get("questions")
            for key in questions.keys():
                q = questions.get(key)
                if q.get("QDep") == 5 and q.get("answer") != "Unknown":
                    question_temp = q.get("question")
                    answer = q.get("answer")
                    real_question = theory + " Question: " + question_temp + "?"
                    qa_pairs.append((real_question, answer))
    random.seed(seed)
    random_qa_pairs = random.sample(qa_pairs, 50)
    random_qa_pairs_new = random.sample(qa_pairs, 300)
    temp_random_qa_pairs = []
    for item in random_qa_pairs_new:
        if item not in random_qa_pairs:
            temp_random_qa_pairs.append(item)
    temp_random_qa_pairs = temp_random_qa_pairs[:53]
    random_qa_pairs = random_qa_pairs[:5]
    return temp_random_qa_pairs


def run_prompt(proof_input, random_qa_pairs):
    # make a folder to store the outputs and config files, make sure the folder contain current timestamp and model name
    timestamp = datetime.datetime.now().strftime('%Y_%b_%d_%H_%M_%S')
    folder_name = timestamp + '_' + MODEL
    os.mkdir(folder_name)

    # dump the prompt to a file
    write_file = open(folder_name + '/prompt.txt', 'w')
    write_file.write("System message:\n")
    write_file.write(system_message_justprove + "\n\n")
    for i in range(len(prompt_inputs)):
        write_file.write("Example " + str(i + 1) + ":\n")
        write_file.write("Input:\n" + prompt_inputs[i] + "\n\n" + "Output:\n" + prompt_outputs[i] + "\n\n")

    # dump the config to a json file
    config = {
        "temperature": 0,
    }
    with open(folder_name + '/config.json', 'w') as json_file:
        json.dump(config, json_file)

    # make a json file to store the random_qa_pairs and its corresponding outputs
    input_output_pairs = []
    for i in range(len(random_qa_pairs)):
        try:
            qa_pair = random_qa_pairs[i][0] + '\n\n' + proof_input[i]
            response = openai.ChatCompletion.create(
                model=MODEL,
                messages=[
                    {"role": "system", "content": system_message_justprove},
                    {"role": "user", "content": "This is an example:\n" + prompt_inputs[0] + "\n\n" + prompt_outputs[0]},
                    {"role": "user", "content": "This is an example:\n" + prompt_inputs[1] + "\n\n" + prompt_outputs[1]},
                    {"role": "user", "content": "This is an example:\n" + prompt_inputs[2] + "\n\n" + prompt_outputs[2]},
                    {"role": "user", "content": "This is an example:\n" + prompt_inputs[3] + "\n\n" + prompt_outputs[3]},
                    {"role": "assistant", "content": qa_pair},
                ],  
                temperature=config["temperature"],
            )
            json_file = open(folder_name + '/output_' + str(i) + '.json', 'w')
            res = response["choices"][0]["message"]["content"]
            d = {"input": qa_pair, "input_tokens": response["usage"]["prompt_tokens"], "output": res, "output_tokens": response["usage"]["completion_tokens"]}
            print("This is problem: " + str(i) +  ". The predicted answer is: " + res.strip().split('\n')[-1] + ", The GT answer is: " + str(random_qa_pairs[i][1]))
            json.dump(d, json_file, indent=4, ensure_ascii=False)
        except:
            print("Error in problem: " + str(i) + ".")


if __name__ == "__main__":
    start_time = time.time()
    # select random questions from proofwriter OWA depth-5 dataset, to use it, download it from https://allenai.org/data/proofwriter
    random_qa_pairs = data_generation_proofwriter(filename='proofwriter-dataset-V2020.12.3/OWA/depth-5/meta-test.jsonl')
    proof_input = []
    f_list = os.listdir("2023_Jul_25_12_19_14_gpt-4_50_logiclm")
    f_list = [f for f in f_list if f.endswith(".json") and f.startswith("output")]
    f_list = sorted(f_list, key=lambda x: int(x.split('_')[1].split('.')[0]))
    for f in f_list:
        if f.startswith("output") and f.endswith(".json"):
            d = json.load(open("2023_Jul_25_12_19_14_gpt-4_50_logiclm/" + f))
            proof_input.append(d["output"])
    run_prompt(proof_input, random_qa_pairs)
    print("Time elapsed: ", time.time() - start_time)

