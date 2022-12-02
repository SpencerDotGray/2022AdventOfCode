
result = {}
with open('input.txt') as filein:
    count = 0
    for line in filein.readlines():

        if line.strip() == '':
            count += 1
            continue

        if count not in result.keys():
            result[count] = 0
        result[count] += int(line)
max_count = 0
for count in result.values():
    if count > max_count:
        max_count = count
print(max_count)