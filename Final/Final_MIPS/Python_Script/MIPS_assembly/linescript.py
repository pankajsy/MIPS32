Inst2OpCode = {'ADD':   '000000',               'ADDI':  '000001',               'SUB':   '000000',               'SUBI':  '000010',
               'AND':   '000000',               'ANDI':  '000011',               'OR':    '000000',               'NOR':   '000000',
               'ORI':   '000100',               'SHL':   '000101',               'SHR':   '000110',               'LW':    '000111',
               'SW':    '001000',               'BLT':   '001001',               'BEQ':   '001010',               'BNE':   '001011',
               'JMP':   '001100',               'HAL':   '111111'}

Inst2Fuct = {'ADD': '010000',             'SUB': '010001',
             'AND': '010010',             'OR':  '010011',
             'NOR': '010100'}

b2Hex = {'0000': '0', '0001': '1', '0010': '2', '0011': '3',
         '0100': '4', '0101': '5', '0110': '6', '0111': '7',
         '1000': '8', '1001': '9', '1010': 'A', '1011': 'B',
         '1100': 'C', '1101': 'D', '1110': 'E', '1111': 'F'}

def binaryConvert(no, select=0):
    noB = no
    binarySeq = ""
    while (noB != 0):
        binarySeq = str(noB % 2) + binarySeq
        noB = noB / 2
    if select == 1:
        allowedLength = 16
    elif select == 2:
        allowedLength = 26
    else:
        allowedLength = 5
    while len(binarySeq) < allowedLength:
        binarySeq = "0" + binarySeq
    return binarySeq

def binarytoHex(binarySeq):
    Hex = ""
    for i in range(8):
        Hex += b2Hex[binarySeq[4 * i : 4 * i + 4]]
    return Hex

def convert(string):
    contents = string.split(" ")
    instBinarySeq = ""
    if len(contents) == 4:
        if Inst2OpCode[contents[0]] == "000000":
            try:
                instruction = Inst2OpCode[contents[0]]
                Fuct = Inst2Fuct[contents[0]]
                assert contents[2][0] == 'R'
                registerNo = int(contents[2][1:])
                assert contents[3][0] == 'R'
                registerNo2 = int(contents[3][1:])
                assert contents[1][0] == 'R'
                registerNo3 = int(contents[1][1:])
                if registerNo > 31 or registerNo < 0 or registerNo2 > 31 or registerNo2 < 0 or registerNo3 > 31 or registerNo3 < 0:
                    print "Invalid Register No."
                    return None
            except KeyError:
                print "Invalid Command  1"
                return None
            except AssertionError as e:
                print "Register name should be written as R<register no>  1"
                return None
            except ValueError as e:
                print "Invalid Register No.  1"
                return None
            instBinarySeq += instruction
            instBinarySeq += binaryConvert(registerNo)
            instBinarySeq += binaryConvert(registerNo2)
            instBinarySeq += binaryConvert(registerNo3)
            instBinarySeq += "00000"
            instBinarySeq += Fuct
            print "Opcode-"+instruction+" Rs-"+binaryConvert(registerNo)+" Rt-"+binaryConvert(registerNo2)+" Rd-"+binaryConvert(registerNo3)+ " Shamt-00000" + " funcode-"+Fuct
            print binarytoHex(instBinarySeq)
            return binarytoHex(instBinarySeq)

        if contents[0] in ["LW", "SW", "BEQ","BLT", "BNE", "ADDI", "SUBI", "ANDI", "ORI", "SHL", "SHR"]:
            try:
                instruction = Inst2OpCode[contents[0]]
                assert contents[2][0] == 'R'
                registerNo = int(contents[2][1:])
                assert contents[1][0] == 'R'
                registerNo2 = int(contents[1][1:])
                if registerNo > 31 or registerNo < 0 or registerNo2 > 31 or registerNo2 < 0:
                    print "Invalid Register No."
                    return None
            except KeyError:
                print "Invalid Command  2"
                return None
            except AssertionError as e:
                print "Register name should be written as R<register no>  2"
                return None
            except ValueError as e:
                print "Invalid Register No. 2"
                return None
            try:
                no = int(contents[3])
                no = format(no if no >= 0 else (1 << 16) + no, '016b')
            except ValueError:
                print "Invalid 16-bit Number  2"
                return None
            instBinarySeq += instruction
            instBinarySeq += binaryConvert(registerNo)
            instBinarySeq += binaryConvert(registerNo2)
            instBinarySeq += no
            print "Opcode-" + instruction + " Rs-" + binaryConvert(registerNo) + " Rt-" + binaryConvert(registerNo2)+ " Imm-" + no
            print binarytoHex(instBinarySeq)
            return binarytoHex(instBinarySeq)
        print "Invalid Command 2"
        return None
    elif len(contents) <= 2:
        if contents[0] == "JMP":
            try:
                instruction = Inst2OpCode[contents[0]]
                no = int(contents[1])
                if no > 65535:
                    print "Not a valid 16-bit No.  3"
                    return None
            except ValueError:
                print "Invalid 16-bit Number  3"
                return None
            instBinarySeq += instruction
            instBinarySeq += binaryConvert(no, 2)
            print "Opcode-"+instruction+"Imm-"+ binaryConvert(no, 2)
        elif contents[0] == "HAL":
            instBinarySeq += "111111"
            instBinarySeq += "00000000000000000000000000"
            print "Opcode-111111" + " Rs-00000000000000000000000000"
        else:
            print "Invalid Command 3"
            return None
        print binarytoHex(instBinarySeq)
        return binarytoHex(instBinarySeq)
    else:
        print "Invalid Instruction. 3"
        return None

finalstring = []
inputStringline = ""
readfile = open('MIPS.txt', "r")

while inputStringline != "HAL":
    inputStringline = readfile.readline().rstrip('\n')
    print inputStringline
    commandLine = convert(inputStringline)
    if commandLine == None:
       continue;
    finalstring.append(commandLine)
readfile.close()
Filename = raw_input("Name of  File ")
f = file('script/'+Filename + ".txt", 'w')
fileContents = ''
for i in range(len(finalstring)):
    fileContents += finalstring[i]+"\n"
f.write(fileContents)
f.close()
print "End"

