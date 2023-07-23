

https://www.elastic.co/downloads
https://artifacts.elastic.co/downloads/kibana/kibana-6.8.6-linux-x86_64.tar.gz


-----  解压缩，安装
tar xf /software/kibana/kibana-6.8.6-linux-x86_64.tar.gz   -C /opt/
mv  /opt/kibana-6.8.6-linux-x86_64   /opt/kibana6.8.6

-----  修改配置文件
cd /opt/kibana6.8.6/config

vim kibana.yml   只写下面内容，从5601，修改成 5678

server.port: 5678                
server.host: "0.0.0.0"
elasticsearch.url: "http://192.168.124.125:9200"

------ 启动kibana
nohup /opt/kibana6.8.6/bin/kibana   > /root/logs/kibana.log   &

------ 测试kibana是否安装成功
http://192.168.124.125:5678/app/kibana

   

 


