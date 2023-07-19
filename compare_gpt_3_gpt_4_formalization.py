"""
Compare formalization from GPT-3 and GPT-4 to Lean code
"""

import os
import json

# GPT3_file = open("2023_Jul_17_08_18_38_gpt-3.5-turbo/output.json")
file1 = open("2023_Jul_19_14_58_16_gpt-4/output.json")
file2 = open("2023_Jul_19_15_04_40_gpt-4/output.json")

file1_dict = json.load(file1)
file2_dict = json.load(file2)

for i in range(5):
    if file1_dict[i]["output"].split("theorem")[0] == file2_dict[i]["output"].split("theorem")[0]:
        continue
    else:
        print("\n\nExample " + str(i + 1) + ":")
        print("\n\nInput:\n\n")
        print(file1_dict[i]["input"])
        print("\n\nfile 1 formalization output:\n\n")
        print(file1_dict[i]["output"].split("theorem")[0])
        print("\n\nfile 2 formalization output:\n\n")
        print(file2_dict[i]["output"].split("theorem")[0])
