# Todo provisionamento deve ser feito em arquivo tipo bash
# o dono de todos os diretorios será o root
# todos os usuários terão permissão total dentro do diretorio publico
# Os usuários de cada grupo terão permissão total dentro do seu respectivo dretorio
# Os usuários ter permissão total dentro de seu respectivo diretorio
# Os usuarios não poderão ter permissão de leitura, escrita e execução em diretrios
# de departamentos que eles não pertencem
# Subir arquivo de script criado para a sua conta no github

mkdir publico adm ven sec

echo "criando grupos GRP_ADM, GRP_VEN, GRP_SEC"

groupadd GRP_ADM GRP_VEN GRP_SEC

echo "criando usuarios "
useradd carlos -c "Usuário fulano" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -c "Usuário fulano" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -c "Usuário fulano" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -c "Usuário fulano" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -c "Usuário fulano" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -c "Usuário fulano" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -c "Usuário fulano" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -c "Usuário fulano" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -c "Usuário fulano" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Adicionando permissões de dono nos diretorios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#echo "Adicionando pastas aos grupos correspondentes"
#usermod -g /adm GRP_ADM
#usermod -g /ven GRP_VEN
#usermod -g /sec GRP_SEC

echo "Adicionando as devidas permissões as pastas
chmod 777 /publico
chmod 770 /adm 
chmod 770 /ven 
chmod 770 /sec
