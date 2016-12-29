files=`ls *.md | xargs -R 2 -I {} bash -c "iconv -f utf-8 -t utf-16 {} &>/dev/null || echo {}"`

for file in $files
do
  if [[ "$file" != "{}" ]]
  then
    echo $file
    iconv -f utf8 -t utf8 -c "$file" | sponge "$file"
  fi
done
