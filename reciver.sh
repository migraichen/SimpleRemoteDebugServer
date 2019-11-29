#/bin/bash

PORT=1234
LOGFILE=/tmp/debugserver.log
LINES=200

while true;
do
    # test ist logfile exists and append incoming messages to it
    [ ! -f $LOGFILE ] && touch $LOGFILE
    nc -l $PORT >> $LOGFILE
    # shorten it to the last lines, the quotation maks will keep the special characters like '\n' etc.
    echo "`tail -n $LINES $LOGFILE`" > $LOGFILE
done
