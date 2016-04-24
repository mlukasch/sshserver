if [ ! -d /var/run/sshd ]; then
   mkdir /var/run/sshd
   chmod 0755 /var/run/sshd
fi

useradd maik
mkhomedir_helper maik
mkdir /home/maik/.ssh
cat /id_rsa.pub > /home/maik/.ssh/authorized_keys
