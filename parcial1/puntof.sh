echo "Mi IP Publica es:" > parcial1/filtroavanzado.txt
curl -s ifconfig.me >> parcial1/filtroavanzado.txt
echo "" >> parcial1/filtroavanzado.txt

echo "Mi usuario es:" >> parcial1/filtroavanzado.txt
whoami >> parcial1/filtroavanzado.txt

echo "El hash de mi usuario es:" >> parcial1/filtroavanzado.txt
sudo cat /etc/shadow |grep vagrant |awk -F ':' '{print $2}' >> parcial1/filtroavanzado.txt
