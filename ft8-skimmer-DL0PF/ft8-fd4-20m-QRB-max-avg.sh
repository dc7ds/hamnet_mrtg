cat /tmp/206.tmp|awk '$6 ~/^1407/'| awk '{print $8}' | grep -v -e '^$' | sed 's/$/MM/' | while read line ; do php /etc/mrtg/loc2qrb.php $line ; done | awk 'BEGIN{ TOTAL=0 } { TOTAL = TOTAL + $1 } END{ print TOTAL/NR }'
cat /tmp/206.tmp|awk '$6 ~/^1407/'|awk '{print $8}' | grep -v -e '^$' | sed 's/$/MM/' | while read line ; do php /etc/mrtg/loc2qrb.php $line ; done | awk '{ if( MAX == "" || $1+0 > MAX ) { MAX=$1+0 } } END{ print MAX }'
echo 0
echo 0
