#!/bin/sh
# automail.sh
DIR=/home/figo/develop/env/WORKSPACE/shell_WorkSpace/shellPraticse/sendMail
mailcontent=$DIR/mailcontent
> "$mailcontent"
echo -e "owinux，您好!\n" >> $mailcontent
echo -e "\t附件为 `date +%Y-%m-%d` 设备日检报告，敬请查收。" >> $mailcontent
cat mailcontent | /usr/bin/mutt -s "设备日检报告" -a /home/figo/develop/env/WORKSPACE/shell_WorkSpace/shellPraticse/sendMail/demo.xls -b xujh945@qq.com -c 1611992451@qq.com -c 38334641@qq.com