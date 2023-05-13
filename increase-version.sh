xml_content=$(cat models/main.xml)

# Get the value of the version attribute
version=$(xmllint  --xpath "string(/root/@version)"  models/main.xml)
# Increase the version by 1
new_version=$((version + 1))

# Print the updated XML content
echo "$new_version"


cat models/main.xml | xmllint --shell - | sed 's/version="\(.*\)"/set_attr("version", \1 + 1)/' | xmllint --format -
