
# Download shakespear plays (plaintext files)
curl http://stash.compciv.org/scrapespeare/shakespeare-plays-flat-text.zip -o shakespeare.zip
unzip shakespeare.zip

# cd into newly created directory, count lines in each text file
echo "Counting total number of lines in all documents \n"
cd shakespeare-plays-flat-text
cat *.txt | wc -l

# Count top 10 words for a given play
cat "$1.txt" | \
  tr [[:upper:]] [[:lower:]] | \
  grep -oE "[[:alpha:]]{2,}" | \
  sort | \
  uniq -c | \
  sort -rn | \
  head -n 10




