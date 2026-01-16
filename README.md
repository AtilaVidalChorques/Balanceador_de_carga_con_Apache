# Activación de los módulos necesarios de Apache para configurarlo como proxy inverso
Empezamos con sudo apt install apache2 -y para instalar el apache para usar el comando a2enmod.

<img width="642" height="159" alt="imagen" src="https://github.com/user-attachments/assets/617a40c8-c422-4c41-8e52-b32de9158835" />

Permite configurar el servidor web como un proxy inverso.

<img width="462" height="70" alt="imagen" src="https://github.com/user-attachments/assets/36bff331-5a7a-4d7a-a886-e563f2c40807" />

Activaremos el proxy_http ya que permite configurar el servidor web como un proxy inverso para el protocolo HTTP

<img width="515" height="115" alt="imagen" src="https://github.com/user-attachments/assets/0b707bcd-bf26-482c-8430-22e363cbcdf6" />

Activaremos el proxy_http ya que permite configurar el servidor web como un proxy inverso para el protocolo HTTP

<img width="515" height="115" alt="imagen" src="https://github.com/user-attachments/assets/2958a04b-3d51-4c56-9646-dd59403ebceb" />

Activamos el proxy_balancer: Este módulo permite configurar cuál será la política de balanceo de carga que utilzará el servidor web.

<img width="552" height="200" alt="imagen" src="https://github.com/user-attachments/assets/d9e52b86-59f9-4188-af1f-f5b534f8d657" />

# Configuración de la política de balanceo de carga

Debemos de activar el módulo lbmethod_byrequests y reiniciar al apache.

<img width="630" height="314" alt="imagen" src="https://github.com/user-attachments/assets/26823514-9e28-47dd-b05d-f78c782e33d8" />

# Configuración de Apache para trabajar como balanceador de carga para el tráfico HTTP

### Paso 1. Creación de un nuevo archivo de VirtualHost

Creamos el archivo load-balancer.conf en el directorio /etc/apache2/sites-available

<img width="811" height="61" alt="imagen" src="https://github.com/user-attachments/assets/7763862a-ac13-4127-916a-cd86a9ec00c2" />

IP Frontal web 1: 172.31.21.252

IP Frontal web 2: 172.31.31.140

<img width="686" height="276" alt="imagen" src="https://github.com/user-attachments/assets/d32175dd-e00c-49bc-b4de-8bd26e30a2cf" />

### Paso 2. Habilitamos el VirtualHost que acabmos de crear

Habilitamos el VirtualHost que acabamos de crear con el siguiente comando:

<img width="605" height="88" alt="imagen" src="https://github.com/user-attachments/assets/809bc467-f6e8-462c-b79a-73784403a0fb" />

Deshabilitamos el VirtualHost que tiene Apache configurado por defecto:

<img width="590" height="94" alt="imagen" src="https://github.com/user-attachments/assets/9d598909-d148-44b9-963a-700b4d0d8742" />

Puede consultar los VirtualHost que tiene habilitados Apache con el comando:

<img width="812" height="380" alt="imagen" src="https://github.com/user-attachments/assets/0b13de82-0a64-4d72-b49b-4d6667466cab" />

### Paso 3. Reiniciamos el servicio de Apache

Una vez aplicados los cambios reiniciamos el servicio de Apache:

<img width="812" height="96" alt="imagen" src="https://github.com/user-attachments/assets/2d1beb02-7aa6-409e-9804-e0dc20723135" />

# Configuración de Apache para trabajar como balanceador de carga para el tráfico HTTPS

Crear una dirección IP elástica en AWS y asociarla a la instancia EC2 que hace de balanceador.

<img width="1080" height="478" alt="imagen" src="https://github.com/user-attachments/assets/53cc29e1-5bb9-421b-9390-9c039c858fe3" />

<img width="1639" height="32" alt="imagen" src="https://github.com/user-attachments/assets/c321443e-1cd8-4865-85b7-81a7c1676dae" />

Aqui seguiria la practica pero no podemos porque tenemos que crear un dominio.
