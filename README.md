# PNPPortableHackingMachine
This creates the portable hacking machine which consist of creating hotspot on RaspberryPi 3 in kali linux 2.1.2 operating system. It has some configuration changes as well which enable the wireless access of RaspberryPi 3 on any android mobile phone. 

# PNP_RPi3_AP
convert your Raspberry pi 3 into a Access Point by creating the hotspot

First Clone the URL

then install this using following command:-
sudo ./install.sh 

Now all the files will get automatically install.

Now test the AP by using following command:-
sudo ap <Your_SSID> <Your_PASSWORD>

Say For Example:-
sudo ap PNP pnptutorials

This command will create a AP named as "PNP" with Password = "pnptutorials"

You are free to Clone and then modify the script.

comment.py is commitning the change in .bashrc file by introducing # in front of ap making command.

reboot.py is commiting the change in .bashrc file by removing # in front of ap making command.



