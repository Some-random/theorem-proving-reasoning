"""
Compare formalization from GPT-3 and GPT-4 to Lean code
"""

import os
import json

GPT3_file = open("2023_Jul_17_08_18_38_gpt-3.5-turbo/output.json")
GPT4_file = open("2023_Jul_17_08_24_28_gpt-4/output.json")

GPT3_dict = json.load(GPT3_file)
GPT4_dict = json.load(GPT4_file)

for i in range(5):
    if GPT3_dict[i]["output"].split("theorem")[0] == GPT4_dict[i]["output"].split("theorem")[0]:
        continue
    else:
        print("\n\nExample " + str(i + 1) + ":")
        print("\n\nInput:\n\n")
        print(GPT3_dict[i]["input"])
        print("\n\nGPT-3 output:\n\n")
        print(GPT3_dict[i]["output"].split("theorem")[0])
        print("\n\nGPT-4 output:\n\n")
        print(GPT4_dict[i]["output"].split("theorem")[0])
