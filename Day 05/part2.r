
f <- file('stdin')
doneSetup <- FALSE
open(f, open="r")
stacks = list("", "", "", "", "", "", "", "", "")

while(length(line <- readLines(f, n=1)) > 0) {
    
    if (doneSetup == FALSE && substring(line, 2, 2) != "1") {
        
        for (i in 0 : 8) {
            num  <- (1 + i*4) + 1 
            
            if (substring(line, num, num) != " ") {
                stacks[i+1] <- paste(substring(line, num, num),stacks[i+1], sep='')
            }
        }
    }
    else if (substring(line, 2, 2) == "1" || line == "") {
        doneSetup <- TRUE
    }
    else { # Actually Processing Now
                  
        stack_numbers <- regmatches(line, gregexpr("[[:digit:]]+", line))
        stack_numbers <- as.numeric(unlist(stack_numbers))
        
        sourceLength <- nchar(stacks[stack_numbers[2]])
        destLength <- nchar(stacks[stack_numbers[3]])
        
        # Source get and remove
        moveStack = substring(stacks[stack_numbers[2]], sourceLength - (stack_numbers[1]-1), sourceLength)
        stacks[stack_numbers[2]] <- substring(stacks[stack_numbers[2]], 1, sourceLength - (stack_numbers[1]))
        
        # Dest add
        stacks[stack_numbers[3]] <- paste(stacks[stack_numbers[3]], moveStack, sep='')
    }
}

print(stacks)