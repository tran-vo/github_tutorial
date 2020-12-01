file = open("./test.txt", "r")

wcount = 0
ccount = 0
for line in file:
    words = line.split()
    wcount += len(words)
    for character in line:
        print(character, end ="")
        if not character.isspace():
           ccount += 1
     
print("The number of words in the file test.txt are: ", wcount)
print("The number of character in the file test.txt are: ", ccount)
