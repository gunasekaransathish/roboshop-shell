dnf install mongodb-org -y

cp mongodb.conf /etc/yum.repos.d/mongo.repo

sed -i -e '/s/127.0.0.1/0.0.0.0' /etc/mongod.conf

systemctl enable mongod
systemctl start mongod

