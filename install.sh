echo "**********************Performing update************************"
apt-get update
echo "**********************Installing Vino************************"
apt-get -y install vino
gsettings set org.gnome.Vino prompt-enabled false
gsettings set org.gnome.Vino require-encryption false

echo "VNC server setup done"

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
mv /etc/pam.d/autologin-lightdm  /etc/pam.d/autologin-lightdm.bak
cp ./lightdm.conf /etc/lightdm/lightdm.conf
cp ./autologin-lightdm /etc/pam.d/autologin-lightdm
