#!/bin/bash

rm -rf std-startup.xml

echo -e "<aiml version=\"1.0.1\" encoding=\"UTF-8\">\n\t<category>\n\t\t<pattern>LOAD AIML B</pattern>" | cat > std-startup.xml

echo -e "\t\t<template>" | cat >>std-startup.xml

for i in $(ls aiml_files/);do

echo -e "\t\t\t<learn>aiml_files/$i</learn>" | cat >> std-startup.xml

done
echo -e "\t\t</template>" | cat  >> std-startup.xml

echo -e "\t</category>" | cat >>std-startup.xml

echo -e "</aiml>" | cat >> std-startup.xml


