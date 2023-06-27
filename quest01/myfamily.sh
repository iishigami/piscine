curl -s -o data.json "https://01.alem.school/assets/superhero/all.json"

family=$(jq -r --argjson hero_id "$HERO_ID" 'map(select(.id == $hero_id).connections.relatives) | .[0]' data.json)
family=${family//$'\n'/\\n}

echo "$family"
