
# This file downloads all of the shakespeare plays and stores them as plaintext files in the 'shakespeare-plays-flat-text' directory.
# It then counts the total number of lines

curl http://stash.compciv.org/scrapespeare/shakespeare-plays-flat-text.zip -o shakespeare.zip

unzip shakespeare.zip
rm shakespeare.zip

# Now all of the shakespeare plays are stored as plaintext files in 'shakespeare-plays-flat-text'

echo
echo "Total number of lines for all downloaded Shakespeare plays: "
echo
cd shakespeare-plays-flat-text
cat *.txt | wc -l

echo

if [ $? -eq 0 ]
  then echo "Data successfully loaded"
else
  echo "Problem loading data"
fi
