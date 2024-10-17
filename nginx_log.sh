#! /bin/bash

# FILE=./nginx-access.log
# echo "Top 5 IP addresses with the most requests\n"

# cat $FILE | awk '{print $1}' | sort | uniq -c | sort -nr | head -5 | awk '{print $2}'
# echo "\n"
# echo "Top 5 response status codes:\n"
# cat nginx-access.log | awk {'print $9'} | sort | uniq -c | sort -nr | head -5 | awk '{print $2}'
awk '{print $1}' nginx-access.log | sort | uniq -c | sort -nr | head -5
awk '{print $7}' nginx-access.log | sort | uniq -c | sort -nr | head -5
awk '{print $9}' nginx-access.log | sort | uniq -c | sort -nr | head -5
awk -F\" '{print $6}' nginx-access.log | sort | uniq -c | sort -nr | head -5