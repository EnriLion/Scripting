#!/usr/bin/env bash
# Github = EnriLion
# WebScraping in Bash

# Define the URL to scrap
base_url="https://lite.cnn.com"
url="https://lite.cnn.com/"

# Create a CCV file and add a header
echo "Link,Title" > cnn_links.csv

#Extract links and titles and save them to the CSV file
link_array=($(curl -s "$url" | awk -F 'href="' '/<a/{gsub(/".*/, "", $2); print $2}'))

for link in "${link_array[@]}"; do
	full_link="${base_url}${link}"
	# real_t=$(curl -s "$full_link" | grep -o '<title[^>]*>[^<]*</title>')
	title=$(curl -s "$full_link" | grep -o '<title[^>]*>[^<]*</title>' | sed -e 's/<title>//g' -e 's/<\/title>//g')	
	echo  " " >> cnn_links.csv
	echo $title >> cnn_links.csv
	echo  " " >> cnn_links.csv
	# echo "\"$full_link\",\"$title\"" >> cnn_links.csv
	echo "\"$full_link\"" >> cnn_links.csv
done

echo "Scraping and CSV creation complete. Links and titles saved to 'cnn_links.csv'."

