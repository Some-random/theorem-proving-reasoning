import sys

lines = open(sys.argv[1]).readlines()
total, corr = 0, 0
for line in lines:
    if not line.startswith('This is'):
        continue
    else:
        total += 1
        GT_answer = line.strip().split(' ')[-1]
        pred_answer = line.strip().split(',')[0].split(' ')[-1]
        if GT_answer == pred_answer:
            corr += 1

print(round(float(corr) / total * 100, 2))


