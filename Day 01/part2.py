
result = {}
with open('input2.txt') as filein:
    count = 0
    for line in filein.readlines():

        if line.strip() == '':
            count += 1
            continue

        if count not in result.keys():
            result[count] = 0
        result[count] += int(line)

total = 0
max_count = 0
result_list = list(result.values())

for i in range(0, 3):
    max_count = 0
    for r in result_list:
        if r > max_count:
            max_count = r
    total += max_count
    result_list.remove(max_count)
print(total)