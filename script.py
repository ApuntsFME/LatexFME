import sys
import os
import re
 
def usage():
    print("\033[91mError: Invalid number of arguments\033[0m")
    print("\033[93mUsage: python " + sys.argv[0] + " [indexfile]\033[0m")
    sys.exit()

if (len(sys.argv) < 2):
    usage()

ifile = sys.argv[1]

i = 0
labels = []
pages = []

lab = re.compile(r'\(\((.+?)\)\)')
pag = re.compile(r'{([0-9]+?)}')

newidx = ''

with open(ifile, 'r') as f:
    lines = f.readlines()
    for line in reversed(lines):
        print(line)
        save = re.findall(lab, line)
        if (save[0] == 'tlab'):
            labels.append(labels[-1])
        else:
            labels.append(save[0])
        line = re.sub(lab, '', line)
        page = re.findall(pag, line)
        pages.append(page[0])
        line = re.sub(pag, '{' + str(i) + '}', line)
        newidx = line + newidx
        i += 1
    f.close()

with open(ifile, 'w') as f:
    f.write(newidx)
    f.close()

os.system('makeindex ' + ifile)

nfile = re.sub(r'idx$', 'ind', ifile)

newind = ''
pa = re.compile(r'\\hyperpage{([0-9]+?)}')

with open(nfile, 'r') as f:
    lines = f.readlines()
    for line in lines:
        fpage = re.findall(pa, line)
        if (len(fpage) > 0):
            i = int(fpage[0])
            line = re.sub(pa, r'\\hyperref[' + labels[i] + ']{' + pages[i] + '}', line)
        newind += line
    f.close
    
with open(nfile, 'w') as f:
    f.write(newind)
    f.close()
