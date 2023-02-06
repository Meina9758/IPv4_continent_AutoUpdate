import sys

from cidrize import cidrize


class Usage(Exception):
    def __init__(self, msg):
        self.msg = msg

input_file = sys.argv[1]
output_file = sys.argv[2]

def read(input_file):
    with open(input_file, 'r') as f:
        lines = f.readlines()
        str1 = ""
        str2 = ""
        for i in range(len(lines)):
            if '-' in lines[i]:
                str1 = (lines[i].split('-')[0])
                str2 = (lines[i].split('-')[1])
                str2 = str2.rstrip('\n')
                if len(str1) == len(str2):
                    if (str1 == str2):
                        lines[i] = str1
                    else:
                        str1 = ""
                        str2 = ""
        if any(':' in line for line in lines):
            lines = [line.strip() for line in lines if ':' not in line]
            return lines
        else:
            return lines

def ip2cidr(lines):
    for line in lines:
        trans = cidrize(line)
        with open(output_file, 'a') as f:
            cidrlist = ("\n".join('%s' % id for id in trans))
            cidrbf = cidrlist.replace(",", "\n")
            cidr1 = cidrbf.replace("[", "")
            cidr2 = cidr1.replace("]", "")
            cidr3 = cidr2.replace("(", "")
            cidr4 = cidr3.replace(")", "")
            cidr5 = cidr4.replace("'", "")
            cidr6 = cidr5.replace("IPNetwork", "")
            cidr_n = cidr6.replace(" ", "")
            f.writelines(str(cidr_n) + '\n')
            print(cidr_n)

    return 1



def main():
    lines = read(input_file)
    ip2cidr(lines)


if __name__ == '__main__':
    main()
