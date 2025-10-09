# USAGE:
    ./package.sh
# DESCRIPTION:
Package a CT103 assignment to the specifications of the lecturer.
    Intended to further automate the lab classes and to remove the need for a document editor like word.
    Just edit source/source.c, build(or package.sh), add some screenshots to screenshots/, then package.sh
# DEPENDANCIES:
    pdflatex - for generating the assignment pdf
    pandoc   - for generating the assignment docx
    zip      - to create the zip archive
    LaTeX    - The .tex files require various latex packages and is tested with TexLive, other distros may work
# ARGUMENTS:
    -help, --help - print usage
# VARIABLES:
    NAME        - student name
    STUDENT_ID  - student ID number
    TITLE       - (optional) assignment title
                  DEFAULT: "Assignment"
    DATE        - current date
                  DEFAULT: "%d/%m/%Y"
    LATEX_TITLE - (optional) title to be used in latex, note latex has speical chars
                  DEFAULT: "<TITLE>"
    LATEX_NAME  - (optional) student name to be used in latex, note latex has speical chars
                  DEFAULT: "<NAME>"
# INPUT FILES:
    build.sh               - script used to compile your program
    source/source.c        - Input C source file
    latex/doc.tex          - Master Latex file, \inputs generated .tex files
    screenshots/*          - vaild images used for inclusion in the assignment document
    screenshots/*_pre.tex  - latex to be placed berfore inserting the image file of the same name
    screenshots/*_post.tex - latex to be placed after inserting the image file of the same name
# OUTPUT FILES:
    <Title>.zip          - output zip file; the upload file
    <Title>/*            - output uncompressed folder and files
    <Title>/source.c     - source.c with generated comment header
    <Title>/<title>.pdf  - output pdf made with pdflatex
    <Title>/<title>.docx - output docx made with pandoc
    latex/title.tex      - generated latex file with title and name definitons
    latex/image.tex      - generated latex file with image includes from screenshots/*
    latex_rubbish/*      - output of pdflatex most of which is rubbish
# EXAMPLES:
    NAME="Matthew Conroy" STUDENT_ID="123456" ./package.sh
    TITLE="Assignment_01" NAME="Matthew Conroy" STUDENT_ID="123456" ./package.sh
    TITLE="Assignment_01" LATEX_TITLE="Assignment One" NAME="Matthew Conroy" STUDENT_ID="123456" ./package.sh
# COPYRIGHT:
    Copyright (c) 2025 Matthew Conroy, MIT No Attribution License <https://opensource.org/license/mit-0>
    Free Licence, do whatever you want just dont sue me pls
