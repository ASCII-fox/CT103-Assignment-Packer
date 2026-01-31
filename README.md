## Description 
Used to automatically create an appropriate archive file for a CT103 assignment.

This has been modified to work with a config file, and to primarily fit my needs.


## Usage:
### Option 1
1. Modify the variables in ```config.sh``` 
2. Replace the contents of ```source.c``` with the contents of your program.
3. Place any additional files you want in the archive into ```source/```.
4. Place a relevant screenshot or image into the ```screenshots/``` directory
5. Run ```package.sh```

### Option 2
You can run this in the same manner as in the original template by manually specifying the variables before running. Doing it this way will ignore ```config.sh```
#### Examples:
```
NAME="Student Name" STUDENT_ID="123456" ./package.sh
TITLE="Assignment_01" NAME="Student Name" STUDENT_ID="123456" ./package.sh
TITLE="Assignment_01" LATEX_TITLE="Assignment One" NAME="Student Name" STUDENT_ID="123456" ./package.sh
```

## Dependencies
```
pdflatex - for generating the assignment pdf
pandoc   - for generating the assignment docx
zip      - to create the zip archive
LaTeX    - The .tex files require various latex packages and is tested with TexLive
```

## Variables
```
NAME                - student name
STUDENT_ID          - student ID number
TITLE               - (optional) assignment title
                      DEFAULT: "Assignment"
DATE                - current date
                      DEFAULT: "%d/%m/%Y"
LATEX_TITLE         - (optional) title to be used in latex
                       DEFAULT: "<TITLE>"
LATEX_NAME          - (optional) student name to be used in latex
                      DEFAULT: "<NAME>"
TEMP_CLEANUP        - Removes temporary files after generation. Set to 1 to clean up, 0 to keep.
                      DEFAULT: "1"
INCLUDE_FULL_SOURCE - Decides if any other files you place into "source/" are included. Set to 1 to allow, and 0 to only include source.c 
                      DEFAULT: "1"

```
## Arguments
```
-help, --help - prints usage and setup information
```

## Files
```
smoke_test.sh          - Basic check to see if the program compiles. Can be ignored if unhelpful.
config.sh              - Responsible for automatic configuration, modify this!
output/*               - Contains output archives
source/*               - Contains assignment files. Anything placed here can be included into the archive if desired.
source/source.c        - Input C source file used for document generation
latex/doc.tex          - Master Latex file, \inputs contains generated .tex files
screenshots/*          - valid images used for inclusion in the assignment document
screenshots/*_pre.tex  - latex to be placed before inserting the image file of the same name
screenshots/*_post.tex - latex to be placed after inserting the image file of the same name
```


## Copyright 
```
Copyright (c) 2025 Matthew Conroy, MIT No Attribution License <https://opensource.org/license/mit-0>
```
