
version=$(bash get-version.sh)

content=$(xmlstarlet ed -u '/root/@version' -v ${version} models/main.xml > temp.xml)

cat temp.xml > models/main.xml
