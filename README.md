# SimpleRemoteDebugServer
bash based remote debugserver

sudo cp SimpleRemoteDebugServer.service /usr/local/lib/systemd/system/SimpleRemoteDebugServer.service
sudo cp simpledebugserverctl /usr/local/sbin/simpledebugserver

sudo systemctl start SimpleRemoteDebugServer.service
sudo systemctl stop SimpleRemoteDebugServer.service

echo "The Test" | nc -q 0 localhost 1234

reading the data
    http://localhost:4321

