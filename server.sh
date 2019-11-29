#/bin/bash

PORT=4321
LOGFILE=/tmp/debugserver.log

while true;
do
    {
        echo -e 'HTTP/1.1 200 OK';
        echo -e 'Content-Type: text/html; charset=UTF-8\n';
        echo -e '<html>';
        echo -e '<head>';
        echo -e '<meta http-equiv="Content-Language" content="de">';
        echo -e '<meta http-equiv="refresh" content="1">';
        echo -e '<title>HTML Debug Server</title>';
        echo -e '</head>';
        echo -e '<body style="background-color:gray;">';
        echo -e '<h1>';
        echo -e 'Debug Server';
        echo -e '</h1>';
        echo -e '<pre>';
        cat $LOGFILE;
        echo -e '</pre>';
        echo -e '</body>';
        echo -e '</html>';
    } | nc -l $PORT -q 0;
done
