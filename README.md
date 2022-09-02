<h2> <p align="center" > <i> OpenVpn Automation with Bash 🐶  </i> </p> </h2>
<img src = "https://github.com/lackofleak/openvpn-sh/blob/main/preview.png"   />

-------------------------------------------------
<p align="center" >
  <img src="https://svgshare.com/i/Zhy.svg" />
<p/>
<p align="center" >
  <img src="https://img.shields.io/badge/Made%20with-Bash-1f425f.svg" />
</p>

### Features :
- list your openvpn config files in ~/Downloads and try to connect them

### Dependencies :
``` openvpn ``` and ``` lolcat ``` and ``` bash ```


### Installation
 - Just, Clone this repository -
```
git clone https://github.com/lackofleak/openvpn-sh.git
```
- Change to cloned directory : -
```
cd openvpn-sh
```
- give an excute permision to the file :
```
chmod +x vpn.sh
```
- then run it :
```
 ./vpn.sh
```

### optinal step to make it easier :
- remove password request in sudoer file for ``` /bin/openvpn``` :
  - edit ```/etc/sudoers```  file by root permision and add this line :
  ```
  <your username> ALL=(ALL:ALL) NOPASSWD: /bin/openvpn
  ```
  
  <p align="center" > <i> By : lackofleak  </i> </p>

