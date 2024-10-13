#Crea los usuarios
sudo useradd developer1
sudo useradd tester1
sudo useradd devops1
sudo useradd devops2
cat /etc/passwd |tail

#Crea los grupos
sudo groupadd grupodevops
sudo groupadd grupodeveloper
sudo groupadd grupotesters

#Añadir los usuarios a los grupos
sudo usermod -aG grupodevelopers developer1
sudo usermod -aG grupodevops developer1

sudo usermod -aG grupotesters tester1

sudo usermod -aG grupodevelopers devops1
sudo usermod -aG grupodevops devops1

sudo usermod -aG grupodevops devops2

#Modificar los permisos de carpetas
chmod -R u+rwx Examenes-UTN/alumnos_1
chmod -R g-w Examenes-UTN/alumnos_1
chmod -R o-rwx Examenes-UTN/alumnos_1

chmod -R u+rwx Examenes-UTN/alumnos_2
chmod -R u+rwx Examenes-UTN/alumnos_2
chmod -R g-x Examenes-UTN/alumnos_2
chmod -R o-rx Examenes-UTN/alumnos_2

chmod -R u+rwx Examenes-UTN/alumnos_3
chmod -R g-rwx Examenes-UTN/alumnos_3
chmod -R o-rwx Examenes-UTN/alumnos_3

chmod -R u+rwx Examenes-UTN/profesores
chmod -R g+rwx Examenes-UTN/profesores
chmod -R o+rx Examenes-UTN/profesores

#Crea un archivo validar con la salida del usuario logueado
whoami > Examenes-UTN/alumnos_1/validar.txt
whoami > Examenes-UTN/alumnos_2/validar.txt
whoami > Examenes-UTN/alumnos_3/validar.txt
whoami > Examenes-UTN/profesores/validar.txt
