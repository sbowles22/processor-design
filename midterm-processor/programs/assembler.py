import sys

preamble = """
module instRom (
    input address[8],
    output inst[16]
  ) {

  always {
    inst = c{Inst.NOP, 12b0};

    case (address) {
"""

postamble = """
    }
  }
}
"""

inst = {"NOP": 0, "LOAD": 1, "STORE": 2, "SET": 3, "LT": 4, "EQ": 5, "BEQ": 6, "BNEQ": 7, "ADD": 8, "SUB": 9, "SHL": 10,
        "SHR": 11, "AND": 12, "OR": 13, "INV": 14, "XOR": 15, }

with open(sys.argv[1], "r") as source_file:
    lines = source_file.readlines()

for i, line in enumerate(lines):
    lines[i] = line.split("//", 1)[0]

line_count, names = 0, {}
for i, line in enumerate(lines):
    if line.split()[0] in inst.keys():
        line_count += 1
    else:
        names[line.split()[0][:-1]] = line_count

print(names)

for i, line in enumerate(lines):
    if ":" not in line:
        for tag in names.keys():
            if tag in line.split():
                lines[i] = line.replace(tag, str(names[tag]))

for i, line in enumerate(lines):
    if line.split()[0] in inst.keys():
        split_line = line.split()
        for j, _ in enumerate(split_line):
            if j != 0:
                split_line[j] = split_line[j].replace("R", "")
                split_line[j] = split_line[j].replace(",", "")
        lines[i] = ' '.join(split_line)


line_count = 0
for i, line in enumerate(lines):
    if line.split()[0] in inst.keys():
        if len(line.split()) == 3:
            lines[i] = f"{line_count}: inst = c{'{'}Inst.{line.split()[0]}, 4d{line.split()[1]}, 8d{line.split()[2]}{'}'};"
        if len(line.split()) == 4:
            lines[i] = f"{line_count}: inst = c{'{'}Inst.{line.split()[0]}, 4d{line.split()[1]}, 4d{line.split()[2]}, 4d{line.split()[3]}{'}'};"
        line_count += 1
    else:
        lines[i] = f"// {line}"

for i in lines:
    print(i)

with open("instRom.luc", "w") as object_file:
    object_file.write(preamble)

    for line in lines:
        if line.strip() != "":
            object_file.write(f"      {line}\n")

    object_file.write(postamble)
