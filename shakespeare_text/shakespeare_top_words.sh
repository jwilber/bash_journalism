# -----------------------------------
# Count the number of words of at least size '$2' in document '$1'.txt
# -----------------------------------


# test to see if the second argument, minimum number of word chars
# has been set. If not, it defaults to 1
if [[ -z $2 ]]; then
  mval=1
else
  mval=$2
fi

# test to see if the third argument, maximum number of word chars
# has been set. If not, there is no maximum word length
if [[ -z $3 ]]; then
  regex="[[:alpha:]]{$mval,}"
else
  regex="\b[[:alpha:]]{$mval,$3}\b"
fi

cat "./shakespeare-plays-flat-text/$1.txt" | \
  tr [[:upper:]] [[:lower:]] | \
  grep -oE "$regex" | \
  sort | uniq -c | \
  sort -rn | head -n 10



