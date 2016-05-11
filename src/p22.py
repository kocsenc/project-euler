# Kocsen Chung
# Project Euler Problem 22

# With Using names.txt, a 46K text
# file containing over five-thousand first names, begin by sorting it into
# alphabetical order. Then working out the alphabetical value for each name,
# multiply this value by its alphabetical position in the list to obtain a name
# score.

OFFSET = 64
def main():
    all_lines = []
    with open('assets/22-names.txt') as f:
        for line in f.readlines():
            all_lines += line.replace('"', "").split(",")


    all_lines.sort()
    total = 0
    for i in range(len(all_lines)):
        word = all_lines[i]

        total += get_word_val(word, i+1)

    print(total)

def get_word_val(word, index):
    total = 0
    for char in word:
        total += ord(char) - OFFSET

    return total*index

if __name__ == "__main__":
    main()
