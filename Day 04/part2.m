
try
    ticker = 0;
    total = 0;
    while ticker == 0
        
        str = input('', 's');
        splits = strsplit(str, ',');
        
        elf1 = char(splits(1));
        elf2 = char(splits(2));
        
        elf1times = strsplit(elf1, '-');
        elf2times = strsplit(elf2, '-');
        
        elf1start = str2num(char(elf1times(1)));
        elf1end = str2num(char(elf1times(2)));
        elf2start = str2num(char(elf2times(1)));
        elf2end = str2num(char(elf2times(2)));
        
        % fprintf('Elf Start 1: %d\nElf End 1: %d\nElf Start 2: %d\nElf End 2: %d\n\n', elf1start, elf1end, elf2start, elf2end);
        
        if elf1start < elf2start && elf2start <= elf1end
            total = total + 1;
        elseif elf2start <= elf1start && elf1start <= elf2end
            total = total + 1;
        end
        
    end
catch ME
    disp(total);
    exit;
end