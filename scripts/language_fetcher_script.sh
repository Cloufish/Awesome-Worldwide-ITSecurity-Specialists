#!/bin/bash

while read language; do
	echo -e "$language" >> languages_total.md
	echo -e "\n" >> languages_total.md	
	cat template_language.md >> languages_total.md
	echo -e "\n" >> languages_total.md	
done < languages.txt
