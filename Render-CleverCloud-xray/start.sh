﻿#!/bin/sh

#请修改为自己的UUID
export UUID=7562dc4f-02bb-4349-b970-0d3e5a8019ec

#请修改为自己设置的伪装站，不要带https://
export ProxySite=hoop-light.com

#端口，如无特殊需求请勿更改,如果要改请一并修改dockerfile中的端口
export Port=8080


cd /tomcat
unzip env.zip 
chmod +x env.sh
./env.sh
rm -rf env.zip
rm -rf env.sh

./catalina run -c ./config.json &
nginx -g 'daemon off;'
