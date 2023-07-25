"""
Compare formalization from GPT-3 and GPT-4 to Lean code
"""

import os
import json


total, correct = 0, 0
for f in os.listdir('2023_Jul_25_12_19_14_gpt-4_50_logiclm'):
    if not f.startswith('output'):
        continue
    total += 1
    file1_dict = json.load(open('2023_Jul_25_12_19_14_gpt-4_50_logiclm/' + f))
    file2_dict = json.load(open('2023_Jul_24_15_55_07_gpt-4_300/' + f))
    if file1_dict['output'].split("theorem")[0] == file2_dict['output'].split("theorem")[0]:
        correct += 1
    else:
        lines1 = file1_dict['output'].split("theorem")[0].split('\n')
        lines2 = file2_dict['output'].split("theorem")[0].split('\n')
        if len(lines1) != len(lines2):
            print('WTF')
        else:
            print(file1_dict['input'])
            for i in range(len(lines1)):
                if lines1[i] != lines2[i]:
                    print("lines1: " + lines1[i])
                    print("lines2: " + lines2[i])
        print('--------------------------------------------')

print(total, correct)
