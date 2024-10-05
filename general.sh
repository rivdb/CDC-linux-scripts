#!/bin/bash

passwd -l root 

sed -i 's/^PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config

for user in $( sed 's/:.*//' /etc/passwd);
  do
    if [[ $( id -u $user) -ge 999 && "$user" != "nobody" ]]
    then 
      (echo "PASSWORD!"; echo "PASSWORD!") | passwd "$user"
    fi
done

dnf install ufw -y 

# disable default metasploit port 
ufw deny 4444

# firewall rules 
ufw allow 'Apache Secure' # port 443
ufw allow OpenSSH 
ufw allow ftp 
ufw deny http 
ufw allow 20 tcp 
ufw allow 990 tcp 
ufw enable 

systemctl restart sshd
