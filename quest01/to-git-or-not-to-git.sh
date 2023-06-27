# Task: extracting data from JSON filee
curl -s -o data.json "https://01.alem.school/assets/superhero/all.json"

name=$(jq -r '.[170].name' data.json)
power=$(jq -r '.[170].powerstats.power' data.json)
gender=$(jq -r '.[170].appearance.gender' data.json)

printf "$name\n"
printf "$power\n"
printf "$gender\n"
