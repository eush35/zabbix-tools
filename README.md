## Zabbix Agent Auto Install Script
- Zabbix Agent for Ubuntu 22.04 
- ZBX Version 6.2.1
- Edit these lines for yourself.
- sed -i 's/Server=127.0.0.1/Server=/g' /etc/zabbix/zabbix_agentd.conf
- sed -i 's/ServerActive=127.0.0.1/ServerActive=/g' /etc/zabbix/zabbix_agentd.conf
