#!/bin/bash

# Instructions: 
# Please run the following command in the terminal where homework.sh is located to make the file executable.
# chmod +x ./homework.sh

# On your terminal, input all the commands you have used to create the following:

# 1. How would you create 5 directories? Feel free to use any name for your directories.
mkdir dir1 dir2 dir3 dir4 dir5

# 2. How would you verify the creation of all 5 directories?
//cd to parent Directory: 
ls

# 3. In each directory, how would you create 5 .txt files and write "I love data" into each within the directories?
touch ~/OneDrive/Desktop/DSI/dir{1..5}/file{1..5}.txt
for i in ./*.txt; do echo 'I love data' >> "$i"; done; //must cd into each dir{1..5} individually.

# 4. How would you verify the presence of all 5 files?
//cd to parent Directory:
ls dir1
ls dir2
ls dir3
ls dir4
ls dir5

# 5. How would you append to one of the existing files " and machine learning!"?
echo -n " and machine learning!" >> file1.txt

# 6. How would you verify that the text was indeed appended to the existing file?
//cd to dir1 Directory:
cat file1.txt

# 7. How would you delete all files except for the one with the appended text?
//cd to dir1 Directory:
shopt -s extglob
rm -ri !(file1.txt)

# 8. How would you navigate back to the parent directory containing all the directories?
cd /../../

# 9. How would you remove each directory along with its contents?
//cd to parent Directory:
rm -ir

# 10. How would you verify that all directories and files have been deleted?
//cd to parent Directory:
ls

