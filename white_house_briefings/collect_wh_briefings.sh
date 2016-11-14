# As of 13 Novermber 2016 there are 174 pages of briefings

for page_num in $(seq 0 174); do
	echo "Downloading page $page_num"
	echo
	curl http://www.whitehouse.gov/briefing-room/press-briefings?page=$page_num -so wh-briefings/wh_$page_num.html
done
