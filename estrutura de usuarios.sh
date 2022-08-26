#!/bin/bash

echo "Criando diretorios ..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários ..."

groupadd GRUPO_ADM
groupadd GRUPO_VEN
groupadd GRUPO_SEC


echo "Criando usuários ..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd julia -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd dykema -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd rosa -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd tamiris -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC


echo "Especificando permissões dos diretórios ..."

chown root:GRUPO_ADM /adm
chown root:GRUPO_VEN /ven
chown root:GRUPO_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Estrutura concluída ..."
