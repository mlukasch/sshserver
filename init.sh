useradd maik
mkhomedir_helper maik
mkdir /home/maik/.ssh
cat /id_rsa.pub > /home/maik/.ssh/authorized_keys
touch /var/log/auth.log
chmod a+rw /var/log/auth.log
