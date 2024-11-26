# README.md

### Project Description
This project contains three shell scripts designed to work with newline-delimited text data. Each script serves a unique purpose to make working with patterns in the text more flexible and powerful:

1. **`sed_name_replace.sh`**: This script uses `sed` to replace all instances of a given name pattern with a specified replacement text. It's useful for performing quick in-place modifications to text data, especially when handling multiple lines.

2. **`awk_name_replace.sh`**: The `awk` script works similarly to the `sed` script, but offers more control and programmability. It reads an input text file, and for each line, it replaces all occurrences of the specified pattern with a replacement text. It's ideal for more sophisticated text transformations.

3. **`grep_name_match.sh`**: This script uses `grep` to find and display lines that match a given pattern. It is helpful for quickly extracting lines that contain specific keywords or phrases.

### Usage Instructions
Below are the instructions for running each script, including sample commands. Make sure you have the necessary permissions (use `chmod +x` to make them executable if needed).

#### 1. `grep_name_match.sh`
This script will print all lines that match the specified pattern.

**Usage**:
```bash
./grep_name_match.sh <name-pattern> < inputfile.txt
```

**Example**:
```bash
./grep_name_match.sh "Lizzy" < inputfile.txt
```
This command will find and display all lines in `inputfile.txt` that contain the word "Lizzy".

#### 2. `sed_name_replace.sh`
This script will replace all instances of a given pattern with a replacement text in each line of the input.

**Usage**:
```bash
./sed_name_replace.sh <name-pattern> <replacement-text> < inputfile.txt
```

**Example**:
```bash
./sed_name_replace.sh "Lizzy" "Elizabeth" < inputfile.txt
```
This command will replace every occurrence of "Lizzy" with "Elizabeth" in `inputfile.txt` and output the modified text.

#### 3. `awk_name_replace.sh`
This script will replace all instances of a name pattern with the provided replacement text, line by line.

**Usage**:
```bash
./awk_name_replace.sh <name-pattern> <replacement-text> < inputfile.txt
```

**Example**:
```bash
./awk_name_replace.sh "Lizzy" "Elizabeth" < inputfile.txt
```
This command will replace all occurrences of "Lizzy" with "Elizabeth" for each line in `inputfile.txt` and print the results.
