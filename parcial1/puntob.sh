sudo fdisk /dev/sdc #Crear las particiones


#Formatear las particiones
sudo mkfs.ext4 /dev/sdc1
sudo mkfs.ext4 /dev/sdc2
sudo mkfs.ext4 /dev/sdc3
sudo mkfs.ext4 /dev/sdc5

#Montar las particiones
sudo mount /dev/sdc1 /mnt/sdc1/
sudo mount /dev/sdc2 /mnt/sdc2/
sudo mount /dev/sdc3 /mnt/sdc3/
sudo mount /dev/sdc5 /mnt/sdc5/

#Mostrar el resultado de lsblk
lsblk -f /dev/sdc1
