import os
import json
import sys


dir_list, new_dir_list = os.listdir(sys.argv[1]), []
for item in dir_list:
    if item.startswith('output') and item.endswith('json'):
        new_dir_list.append(item)
dir_list = sorted(new_dir_list, key=lambda x: int(x.split('.')[0].split('_')[1]))

for item in dir_list:
    if item.startswith('output') and item.endswith('json'):
        print('This is: ' + item)
        try:
            d = json.load(open(sys.argv[1] + '/' + item))
            input = d['input'].replace('.', '\n').replace('\n ', '\n')
            print(input)
            print(d['output'])
            print(d['gt_answer'])
            print('-----------------------------------------------------------------------------')
        except:
            print("Error in " + item)

