#!/bin/bash
source .env
apt update && apt install apache2 -y
a2enmod proxy proxy_http proxy_balancer lbmethod_byrequests
# Configurar el VirtualHost como balanceador
cat <<EOF > /etc/apache2/sites-available/000-default.conf
<VirtualHost *:80>
    <Proxy balancer://mycluster>
        BalancerMember http://172.31.21.252
        BalancerMember http://172.31.31.140
    </Proxy>
    ProxyPass / balancer://mycluster/
</VirtualHost>
EOF
systemctl restart apache2
