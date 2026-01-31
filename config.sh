#!/bin/bash

# Configuration file for package.sh

# TITLE: Should be numbered accordingly to the assignment number or week.
# E.g "Assignment10" or "Assignment_10" for a week 10 assignment.
export TITLE=AssignmentX

# NAME: Replace with your name in the format FirstnameLastname.
export NAME=JohnDoe

# STUDENT_ID: Replace with your 8 digit student ID.
export STUDENT_ID=12345678

# TEMP_CLEANUP: "1" to automatically clean up temp files, "0" to keep them.
export TEMP_CLEANUP=1

# C_STD: C standard for the smoke test. Default is c99
export C_STD=c99

# INCLUDE_FULL_SOURCE: If set to 1, will add anything else you put into source/ in the archive.
# Useful if the assignment requires other files such as a text file.
export INCLUDE_FULL_SOURCE=1
