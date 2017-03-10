mkdir /$1
mkdir /container-utils/$1
adduser -h /$1 -DH $1
chown $1 /$1
chown $1 /container-utils/$1
echo /$1 > /container-utils/$1/pwd.txt
chown $1 /container-utils/$1/pwd.txt
