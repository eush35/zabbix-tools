apt-get update
apt-get upgrade -y 
apt-get install psmisc wget nano git net-tools -y
mkdir /opt/zabbix 
cd /opt/zabbix 
wget https://repo.zabbix.com/zabbix/6.2/ubuntu/pool/main/z/zabbix-release/zabbix-release_6.2-1%2Bubuntu22.04_all.deb 
dpkg -i zabbix-release_6.2-1+ubuntu22.04_all.deb
apt-get update -y
apt-get install zabbix-agent -y
systemctl stop zabbix-agent
sed -i 's/Server=127.0.0.1/Server=/g' /etc/zabbix/zabbix_agentd.conf
sed -i 's/ServerActive=127.0.0.1/ServerActive=/g' /etc/zabbix/zabbix_agentd.conf
sed -i '/# LogRemoteCommands=0/a EnableRemoteCommands=1' /etc/zabbix/zabbix_agentd.conf
systemctl enable zabbix-agent 
systemctl start zabbix-agent
