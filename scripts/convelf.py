#!/usr/bin/python3
from io import TextIOBase
import json, re, argparse
import os, sys, subprocess
import textwrap
from colorama import Fore, Back, Style

# ConvELF : A handy tool to convert ELF files to simulation friendly verilog 
# $readmemh/$readmemb format files

def hexSplit(infile: str, map: dict):
    """
    parse the input file and split according to map

    infile: input file (verilog hex)
    map:    python dict specifying the memory map
    """

    # open hex file
    tfile = open(infile, 'r')

    # get device names from map
    mapkeys = map.keys()

    # create empty files
    for k in mapkeys:
        with open(map[k][3], 'w') as fp:
            pass
    
    # create a dummy file handle 
    ofile = TextIOBase

    # Declare a variable to keep track of current address
    currAddr = 0x00000000

    # Declare a variable to keep track of the device file curently writing to
    currKey = 'None'

    # iterate overr lines of tempfile
    for lineno, line in enumerate(tfile):

        # strip all leading and trailing whitespaces
        line = line.strip()
        
        # skip blank lines
        if len(line) == 0:
            continue
        
        # detect address markers & accordingly update currAddr
        if '@' in line:
            currAddr = int(line.replace('@', ''), 16)
            continue
        
        # Wrap line to 4 bytes width
        line=textwrap.wrap(line, 4*2)

        for i in range(len(line)):

            # if CurrAddr is in address range of a device, switch to its corresponding file
            for k in mapkeys:
                if (currAddr >= map[k][0]) and (currAddr < map[k][0]+map[k][1]) and (currKey != k):
                    currKey = k

                    # close if already open
                    if not ofile.closed:
                        ofile.close()
                    
                    # open file for writing
                    ofile = open(map[k][3], 'w')

            # write line
            ofile.write(line[i])
            ofile.write('\n')

            # increment current address
            currAddr+=4
    
    # close all files
    ofile.close()
    tfile.close()


def printConsumption(map: dict):
    """
    Prints memory consumption by examining the contents of inage files

    map: memory map
    """
    for k in map.keys():
        size = map[k][1]
        f = open(map[k][3], 'r')
        consumed=0
        for line in enumerate(f):
            consumed+=4
        f.close()

        percentage = "{:.2f}".format(consumed*100/size)
        print(k+":  " +str(consumed)+ " out of " +str(size)+ " bytes consumed   \t( "+str(percentage)+" % )")


def parse_num(s: str) -> int:
    """
    Converts string containing decimal or hex (prefixed with '0x') or binary (prefixed with '0b') integer to python int
    """
    if len(s) > 2 and s[0:2] == '0x':
        return int(s[2:], 16)
    elif len(s) > 2 and s[0:2] == '0b':
        return int(s[2:], 2)
    else:
        return int(s)


def parse_json(json_path: str) -> dict:
    """
    parses JSON file to obtain the memory map

    map specification:
    - should contain keys corresponding to name of a mem segment
    - should contain value corresponding to those keys as list of 4 elements, containing string values.
    - values in list should be: 
        base address:   base address of mem segment
        size:           size of mem segment (prefix with '0x' & '0b'for hex and binary respectively)
        imtype:         type of output file ('b' for $readmemb compatible binary, 'h' for $readmemh compatible hex)
        impath:         path of image file
    - size and base address can also be specified in hex and bin by prefixing them with '0x' & '0b' respectively.
    - impath supports environment variable elaboration. an environt variable can be specified by enclosing it in ${}

    example:
    map = {
        "FLASH":    ["0x01000000", "65536", "h", "flash.hex"],
        "SRAM":     ["0b01010100", "4096", "h", "${MYENV_VAR}/sram.hex"],
        "ROM":      ["33554432", "4096", "h", "${MYENV_VAR}/${MYENV_VAR2}sram.hex"],
    }
    """
    
    # read json
    f = open(json_path, 'r') 
    data = json.load(f)
    f.close()

    for seg in data.keys():
        assert len(data[seg]) == 4, f"invalid json format; invalid len of list for seg {seg} in {json_path}"

        # parse base address
        data[seg][0] = parse_num(data[seg][0])

        # parse mem size
        data[seg][1] = parse_num(data[seg][1])
        
        # parse impath, replace $XYZ environment variables from impath
        impath = data[seg][3]
        while '${' in impath:
            for match in re.finditer(r'\${[A-Z|a-z|_]*}', impath):
                var = impath[match.start()+2:match.end()-1]
                varval = os.getenv(var)
                if varval:
                    impath = impath[0:match.start()] + varval + impath[match.end():]
                else:
                    print(f"undefined environment variable '{var}' in file '{json_path}'")
                break
        
        data[seg][3] = impath
    return data


def run_cmd(command: list, echo: bool=True):
    """
    runs a bash command
    """
    if echo:
        for c in command:
            print(c+' ', end = '')
        print()

    # Execute shell command using python subprocess module
    dump = subprocess.run(
        command , capture_output=True, text=True
    )

    # dump stderr & stdout if their length is non zero
    if len(dump.stderr) !=0:
        print(dump.stderr)
        sys.exit()

    if len(dump.stderr) !=0:
        print(dump.stderr)
        sys.exit()




if __name__ == "__main__":
    # Default values
    default_inp_file_type = "elf"
    default_toolchaion_prefix = "riscv64-unknown-elf-"
    default_sections_to_keep = ['.text*', '.rodata*', '.sdata*', '.data*']
    
    parser = argparse.ArgumentParser()
    parser.add_argument("file", help="input file", type=str)
    parser.add_argument("-v", "--verbose", help="enable verbose output", action="store_true")
    parser.add_argument("-t", help=f"input file type (default: {default_inp_file_type})", type=str, choices = ["elf", "hex"], default=default_inp_file_type)
    parser.add_argument("-j", "--json", help="parse memory map from json file", type=str)
    parser.add_argument("-m", "--mem", help="add memory segment", type=str, action="append")
    parser.add_argument("-s", "--section", help="specify section to dump in output files", type=str, action="append")
    parser.add_argument("-c", "--consumption", help="print consumption", action="store_true")
    parser.add_argument("-p", "--prefix", help=f"provide toolchain prefix (default: {default_toolchaion_prefix})", type=str, default=default_toolchaion_prefix)
    parser.add_argument("-k", "--keep-temp", help="keep temporary files", action="store_true")
    args = parser.parse_args()

    verbose = args.verbose
    input_file = args.file

    if (verbose):
        print("input file:", input_file, "  ("+args.t+")")


    # parse json if specified
    memory_map = {}
    if (args.json):
        if (verbose):
            print(f"parsing JSON file '{args.json}'")
        memory_map = parse_json(args.json)


    # parse mem flags
    if(args.mem):
        for segspecifier in args.mem:
            sep = [i for i in range(len(segspecifier)) if segspecifier.startswith(":", i)]
            assert len(sep) == 4, f"invalid number of items in segspecifier '{segspecifier}'"
            
            segname = segspecifier[0:sep[0]]
            segaddr = parse_num(segspecifier[sep[0]+1:sep[1]])
            segsize = parse_num(segspecifier[sep[1]+1:sep[2]])
            segimtype = segspecifier[sep[2]+1:sep[3]]
            segimg = segspecifier[sep[3]+1:]
            
            #print(segname, segaddr, segsize, segimtype, segimg)
            assert segname not in memory_map.keys(), f"seg {segname} already present in map"

            memory_map[segname] = [segaddr, segsize, segimtype, segimg]

    # perform checks
    for seg in memory_map.keys():
        assert memory_map[seg][0] >= 0, f"base address of segment '{seg}' should be greater than 0"
        assert memory_map[seg][1] >= 0, f"size of segment '{seg}' should be greater than 0"
        assert memory_map[seg][2] in ["h", "b"], f"invalid imtype in segment '{seg}'"


    # print map
    if (verbose):
        print("Memory Map :")
        print("-----------------+------------+--------------+-----+---------------- -")
        print(" Segment         | Base Addr  |   Size       | Typ | Impath ")
        print("-----------------+------------+--------------+-----+---------------- -")
        for seg in memory_map.keys():
            print(" {: <15s} | 0x{:08x} | {: ^10d} B | {: >3s} | {:s}".format(seg, memory_map[seg][0], memory_map[seg][1], "hex" if memory_map[seg][2]=="h" else "bin", memory_map[seg][3]))
        print("-----------------+------------+--------------+-----+---------------- -")


    # check if input file is of elf format -> convert to verilog hex
    sections_to_keep = default_sections_to_keep
    if(args.section):
        for sec in args.section:
            assert sec not in sections_to_keep, f"section '{sec}' already present in sections to keep"
            sections_to_keep += [sec]
    
    if(verbose):
        print('Sections to keep:', sections_to_keep)
    
    tmp_file = None

    if (args.t == "elf"):
        tmp_file = input_file + '.hex'

        if (verbose):
            print(f"converting elf to hex: '{tmp_file}'")
        
        command = [args.prefix+'objcopy', '-O', 'verilog']
        for sec in sections_to_keep:
            command+=['-j', sec]
        command+=['--reverse-bytes=4', '--verilog-data-width','4', input_file, tmp_file]
        run_cmd(command, verbose)


    # Spilt hex
    if (verbose):
        print('splitting hexfile')
    
    hexSplit(tmp_file if args.t=='elf' else input_file, memory_map)
    

    # delete temp file
    if args.t=='elf' and not args.keep_temp:
        if (verbose):
            print(f"removing temp file '{tmp_file}'")
        run_cmd(['rm', '-f', tmp_file], verbose)
    
    if args.consumption:
        printConsumption(memory_map)
