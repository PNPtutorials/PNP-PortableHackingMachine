echo "**********************Performing update************************"
apt-get update
echo "**********************Installing xfce4 GUI**********************"
apt-get install kali-defaults kali-root-login desktop-base xfce4 xfce4-places-plugin xfce4-goodies
apt-get install lightdm
dpkg-reconfigure lightdm
echo "**********************Installing Vino************************"
apt-get -y install vino
gsettings set org.gnome.Vino prompt-enabled false
gsettings set org.gnome.Vino require-encryption false

echo "VNC server setup done"
mkdir /root/.config/autostart

echo "**********************Making autorun VNC script************************"
echo "[Desktop Entry]
Encoding=UTF-8
Type=Application
Name=VINO
Comment=
Exec=/usr/lib/vino/vino-server
StartupNotify=false
Terminal=false
Hidden=false" > /root/.config/autostart/vino.desktop

echo "VNC autorun on startup done"

echo "****************Enabling autologin***************"

mv /etc/lightdm/lightdm.conf  /etc/lightdm/lightdm.conf.bak
mv /etc/pam.d/lightdm-autologin  /etc/pam.d/lightdm-autologin.bak
cp lightdm.conf /etc/lightdm/lightdm.conf
cp lightdm-autologin /etc/pam.d/lightdm-autologin
