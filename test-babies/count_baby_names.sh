# Find top baby name for each state

echo "Counting state names"

for txtfile in $(ls data-hold/*.TXT)
do
    cat $txtfile | sort -nr -t ',' -k 5 | head -n 1
    echo
done

echo "Script complete"

