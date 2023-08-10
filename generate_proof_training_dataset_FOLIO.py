import os
import json

for f in os.listdir("2023_Aug_10_15_57_00_gpt-4_FOLIO_train"):
    if not(f.startswith("output_") and f.endswith(".lean")):
        continue
    i = f.split('.')[0].split('_')[1]
    print(f)
    line = ''.join(open("2023_Aug_10_15_57_00_gpt-4_FOLIO_train/" + f).readlines())
    splits = line.split('\ntheorem')
    
    for j in range(1, len(splits)):
        definition = splits[0]
        theorem_1 = splits[j]
        if 'sorry' in theorem_1:
            continue
        definition += '\n\ntheorem' + theorem_1 + '\n'
        write_file = open('reprover_train_FOLIO/output_' + str(i) + '_' + str(j) + '.lean', 'w')
        write_file.write(definition)


for f in os.listdir("2023_Aug_08_11_40_35_gpt-4_FOLIO_train_fix"):
    if not(f.startswith("output_") and f.endswith(".lean")):
        continue
    i = f.split('.')[0].split('_')[1]
    print(f)
    line = ''.join(open("2023_Aug_08_11_40_35_gpt-4_FOLIO_train_fix/" + f).readlines())
    splits = line.split('\ntheorem')
    
    for j in range(1, len(splits)):
        definition = splits[0]
        theorem_1 = splits[j]
        if 'sorry' in theorem_1:
            continue
        definition += '\n\ntheorem' + theorem_1 + '\n'
        write_file = open('reprover_train_FOLIO/output_' + str(i) + '_' + str(j) + '.lean', 'w')
        write_file.write(definition)

