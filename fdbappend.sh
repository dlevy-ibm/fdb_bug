sudo ip link add vxlan1 type vxlan id 1 group 239.1.1.2
sudo ip addr add 10.0.1.2/24 dev vxlan1
sudo ip link set vxlan1 up
sudo ip link add vxlan1 type vxlan id 1 group 239.1.1.2 dev br0
sudo ip link set vxlan1 up

PRIVATE_IPS=$(cat ip_list.txt)
for IP in $PRIVATE_IPS
do
      echo Adding FDB entry for IP: $IP
      sudo bridge fdb append 00:00:00:00:00:00 dev vxlan1  dst $IP self permanent
done