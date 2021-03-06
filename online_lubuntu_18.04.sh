#!/bin/bash

	#PARA INSTALAR SOFTWARES DE TERCEIROS COMO O adobe-flashplugin: (ativa o repositório)

apt-add-repository "deb http://archive.canonical.com/ubuntu bionic partner"  #O apelido bionic corresponde ao (l)ubuntu 18.04 apenas
add-apt-repository ppa:webupd8team/java
	#UPGRADE

apt-get update
apt-get upgrade -y

	#AJUSTE AUTOMÁTICO DA HORA:

apt-get install -y ntp
/etc init.d/ntp status

	#SOFTWARES BÁSICOS:

apt-get install -y adobe-flashplugin wine-stable icedtea-netx oracle-java8-installer vlc libreoffice gedit

echo
echo '  A seguir, assim que abrir o navegador habilite o flash:'
echo '    -> Clique em "Shockwave Flash" para expandir o conteúdo.'
echo '    -> Desmarque a opção "Bloquear conteúdo flash perigoso e malicioso".'
echo '    -> Escolha a opção "Perguntar para ativar".'
echo '    -> Feche a janela do firefox para continuar o script.'
echo
firefox about:addons

	#SOFTWARES EDUCACIONAIS:

apt-get install -y tuxmath tuxpaint tuxtype scratch jclic

mv xlogo.jar ~Desktop/xlogo.jar
chmod -c 777 ~Desktop/xlogo.jar

mv Simuladores\ PhET\ -\ pt_BR/ ~Desktop/Simuladores\ PhET\ -\ pt_BR/
chmod -c -r 777 ~Desktop/Simuladores\ PhET\ -\ pt_BR/

wine <HAGA_QUE>

	#SOFTWARES PARA PROGRAMAÇÃO:

apt-get install -y idle idle3 arduino gedit geany
