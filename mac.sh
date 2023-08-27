sudo ifconfig eth0 down
sudo ifconfig eth0 hw ether $(cat /proc/sys/kernel/random/uuid)
sudo ifconfig eth0 up
./finish.sh