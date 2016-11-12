
# This file downloads all of the shakespeare plays and stores them as plaintext files in the 'shakespeare-plays-flat-text' directory.
# It then counts the total number of lines

curl http://stash.compciv.org/scrapespeare/shakespeare-plays-flat-text.zip -o shakespeare.zip

unzip shakespeare.zip

# Now all of the shakespeare plays are stored as plaintext files in 'shakespeare-plays-flat-text'

echo "Total number of lines for all downloaded Shakespeare plays: \n"
cd shakespeare-plays-flat-text
cat *.txt | wc -l

