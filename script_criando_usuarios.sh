#!/bin/bash

echo "Criando diretorios do sistema...."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos do sistema...."

groupadd grp_adm
groupadd grp_ven
groupadd grp_sec

echo "Criando usuários do sistema...."

user add carlos -c "carlos" -s /bin/bash -m -p$(openssl passwd -crypt Senha123) - G grp_adm
user add maria -c "maria" -s /bin/bash -m -p$(openssl passwd -crypt Senha123) - G grp_adm
user add joao -c "joao" -s /bin/bash -m -p$(openssl passwd -crypt Senha123) - G grp_adm

user add debora -c "debora" -s /bin/bash -m -p$(openssl passwd -crypt Senha123) - G grp_ven
user add sebastiana -c "sebastiana" -s /bin/bash -m -p$(openssl passwd -crypt Senha123) - G grp_ven
user add roberto -c "roberto" -s /bin/bash -m -p$(openssl passwd -crypt Senha123) - G grp_ven

user add josefina -c "josefina" -s /bin/bash -m -p$(openssl passwd -crypt Senha123) - G grp_sec
user add amanda -c "amanda" -s /bin/bash -m -p$(openssl passwd -crypt Senha123) - G grp_sec
user add rogerio -c "rogerio" -s /bin/bash -m -p$(openssl passwd -crypt Senha123) - G grp_sec

echo "Adicionando permissões...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado a configuração....."
