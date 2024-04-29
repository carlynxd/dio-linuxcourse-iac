#!/bin/bash

echo "Criando Diretórios"

mkdir /publico /adm /ven /sec

echo "Criando Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários"

useradd carlos -m -s /bin/bash -p $(openssl passwd senhapadrao) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd senhapadrao) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd senhapadrao) -G GRP_ADM
passwd -e carlos
passwd -e maria
passwd -e joao

useradd debora -m -s /bin/bash -p $(openssl passwd senhapadrao) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd senhapadrao) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd senhapadrao) -G GRP_VEN
passwd -e debora
passwd -e sebastiana
passwd -e roberto

useradd josefina -m -s /bin/bash -p $(openssl passwd senhapadrao) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd senhapadrao) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd senhapadrao) -G GRP_SEC
passwd -e josefina
passwd -e amanda
passwd -e rogerio

echo "Permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizando"
