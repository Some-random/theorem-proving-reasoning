import json
import os
import sys
import subprocess


total = 0
correct_A, correct_B, correct_C = 0, 0, 0
compile_error = 0

def check_lean_code(lean_code, file):
    global compile_error
    with open('temp.lean', 'w') as f:
        f.write(lean_code)
    
    try:
        output = subprocess.check_output(['lean', 'temp.lean'], stderr=subprocess.STDOUT)
    except subprocess.CalledProcessError as e:
        compile_error += 1
        output = e.output
        print('This is: ' + str(file))
        print(output.decode())

dir_list, new_dir_list = os.listdir(sys.argv[1]), []
for item in dir_list:
    if item.startswith('output') and item.endswith('json'):
        new_dir_list.append(item)
dir_list = sorted(new_dir_list, key=lambda x: int(x.split('.')[0].split('_')[1]))

for f in dir_list:
    if f.startswith("output"):
        total += 1
        try:
            is_right = False
            d = json.load(open(sys.argv[1] + '/' + f))
            if d['pred_answer'] == d['gt_answer'] and d['gt_answer'] == 'A':
                correct_A += 1
                is_right = True
            elif d['pred_answer'] == d['gt_answer'] and d['gt_answer'] == 'B':
                correct_B += 1
                is_right = True
            elif d['pred_answer'] == d['gt_answer'] and d['gt_answer'] == 'C':
                correct_C += 1
                is_right = True
            if not is_right:
                print("This is: " + f)
            output = d['output'].split('theorem')[0]
            os.system('rm temp.lean')
            write_file = open('temp.lean', 'w')
            write_file.write(output)
            write_file.close()
            check_lean_code(output, f)
        except Exception as e:
            print('This is: ' + f)
            print(e)
print('Total: ', total, 'Total correct: ', correct_A + correct_B + correct_C, 'Correct A: ', correct_A, 'Correct B: ', \
       correct_B, 'Correct C: ', correct_C, 'compile_error', compile_error)


