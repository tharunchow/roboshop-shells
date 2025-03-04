cp Mongo.repo /etc/yum.repos.d/Mongo.repo
dnf install mongodb-org -y

sed -i -e 's|127.0.0.1|0.0.0.0|' /etc/mongod.conf
systemctl enable mongodb
systemctl start mongodb
systemctl restart mongodb