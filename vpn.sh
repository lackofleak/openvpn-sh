#!/bin/bash

clear

echo " welcome to the VPN 1.0.0 
this script try to find any openvpn saved configuration file
and then try to connect them !

** choose each option to continue :
[1] . help & requirments (recommended)
[2] . Connect VPN
[3] . Exit " | lolcat

read answer1



if [ "1"  -eq  $answer1  ]
then
  echo "  The main help page !

  ------------------------------------------------------

  Before you continue you need somethings :
  lolcat => programm
  openvpn => program
  file.ovpn => any openvpn config file !


  ******************************************

  1- lolcat : lolcat is a programm wich give us a colorized terminal env
   insrtall lolcat using :
   1. in RedHat based systems :
      yum install lolcat
   2. in debian based systems :
      apt install lolcat 
   3. in arch based systems :
      pacman -S lolcat
         4. for another users , can use their own package manager to install this programm


  ******************************************


  2- openvpn :
          * like lolcat[1] install using your own pkg manager


  *******************************************


  3- openvpn config file :
    you can visit site : http://sshocean.net
    and then make your vpn config file and Download it


  ***********************************************
    !! by diffult, script search for config file in ~/Downloads
  ***********************************************

    there are some configs you sould do :
    Edit /etc/sudoers File and set /bin/openvpn with NOPASSWD !
    use nano like this :
    ~ sudo nano /etc/sudoers
    in one line write your username like Example :
    <your username> ALL=(ALL:ALL) NOPASSWD: /bin/openvpn
  ---------------------------------------------------
  
  don't forgot o give +x file permission to the file !

  chmod +x vpn.sh
    it is all you need to run this program ! " | less

elif [ 2 -eq $answer1 ]
then
	clear
  echo " Do you want to connect to openvpn ?
  [1] . Yes
  [2] . No" | lolcat
  read answer2


  if [ 1 -eq $answer2 ]
  then
	  clear
    cd ~
    cd Downloads/
    echo " Connect to random File or Special one ?
    [1]. random
    [2]. special one !" | lolcat
    read answer3


    if [ 1 -eq $answer3 ]
    then
	    clear
      sudo openvpn --config *.ovpn | lolcat
      clear
	      echo " Dissconnected ..." | lolcat
    else 
	    clear
      ls -la | grep ovpn | lolcat
      echo " enter your File name :"
      read answer4
      sudo openvpn --config $answer4 | lolcat
      clear
	      echo " Disconnected ..." | lolcat
    
    fi


  else [ 2 -eq $answer2 ] 
	  clear
    echo "Goodluck !" | exit | lolcat
   
  fi

else
	clear
  echo " Have good Day ! " | exit | lolcat
fi
