#!/bin/bash -x 

while read -r language;do
	lang_code=$(echo "${language}" | awk -F  , '{print $2}')
	lang_name=$(echo "${language}" | awk -F , '{print $1}')

	echo "${lang_name}" >> translated_urls.txt
	sleep 2
	while read -r category; do
		echo "${category}" >> translated_urls.txt

		translated_categ=$(trans -b -no-auto :"${lang_code}" "${category}")
		
		echo  "https://duckduckgo.com/?q=${translated_categ}" >> translated_urls.txt
		sleep 100
	done< categories_worldwide.md


done < languages_with_codes.txt