curl -s -o data.json https://01.alem.school/assets/superhero/all.json

name=$(jq -r '.[52].name' data.json)

printf '"%s"\n' "$name"
