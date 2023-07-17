import openai
from input_output import *
import time
import json
import random
import datetime
import os


# MODEL = "gpt-3.5-turbo"
MODEL = "gpt-4"
seed = 2024
# openai.organization = "org-xxx"
# openai.api_key = "sk-xxx"
prompt_inputs = [example_inputs2, example_inputs3, example_inputs4, example_inputs5]
# prompt_outputs = [example_outputs2, example_outputs3, example_outputs4, example_outputs5]
prompt_outputs = [example_outputs2_short, example_outputs3_short, example_outputs4_short, example_outputs5_short]


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
                if q.get("QDep") == 5 and q.get("answer") != "unknown":
                    question_temp = q.get("question")
                    answer = q.get("answer")
                    real_question = theory + " Question: " + question_temp + "?"
                    qa_pairs.append((real_question, answer))
    random.seed(seed)
    random_qa_pairs = random.sample(qa_pairs, 50)
    random_qa_pairs = random_qa_pairs[:5]
    return random_qa_pairs


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

    # dump the config to a json file
    config = {
        "temperature": 0,
    }
    with open(folder_name + '/config.json', 'w') as json_file:
        json.dump(config, json_file)

    # make a json file to store the random_qa_pairs and its corresponding outputs
    json_file = open(folder_name + '/output.json', 'w')
    input_output_pairs = []
    for i in range(len(random_qa_pairs)):
        qa_pair = random_qa_pairs[i]
        response = openai.ChatCompletion.create(
            model=MODEL,
            messages=[
                {"role": "system", "content": system_message},
                {"role": "user", "content": "This is an example:\n" + prompt_inputs[0] + "\n\n" + prompt_outputs[0]},
                {"role": "user", "content": "This is an example:\n" + prompt_inputs[1] + "\n\n" + prompt_outputs[1]},
                {"role": "user", "content": "This is an example:\n" + prompt_inputs[2] + "\n\n" + prompt_outputs[2]},
                {"role": "user", "content": "This is an example:\n" + prompt_inputs[3] + "\n\n" + prompt_outputs[3]},
                {"role": "assistant", "content": qa_pair[0]},
            ],  
            temperature=config["temperature"],
        )
        res = response["choices"][0]["message"]["content"]
        input_output_pairs.append({"input": qa_pair[0], "input_tokens": response["usage"]["prompt_tokens"], "output": res, "output_tokens": response["usage"]["completion_tokens"]})
        print("This is problem: " + str(i) +  ". The predicted answer is: " + res.strip().split('\n')[-1] + ", The GT answer is: " + str(qa_pair[1]))
    json.dump(input_output_pairs, json_file, indent=4)


if __name__ == "__main__":
    start_time = time.time()
    # select random questions from proofwriter OWA depth-5 dataset, to use it, download it from https://allenai.org/data/proofwriter
    random_qa_pairs = data_generation_proofwriter(filename='proofwriter-dataset-V2020.12.3/OWA/depth-5/meta-test.jsonl')
    run_prompt(random_qa_pairs)
    print("Time elapsed: ", time.time() - start_time)

