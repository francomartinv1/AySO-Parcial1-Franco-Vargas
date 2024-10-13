cat /proc/meminfo  |grep MemTotal > parcial1/filtrobasico.txt
sudo dmidecode -t chassis |grep Chassis >> parcial1/filtrobasico.txt
sudo dmidecode -t chassis |grep Manufact >> parcial1/filtrobasico.txt
cat parcial1/filtrobasico.txt
