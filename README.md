# Linux_Backup_Minecraft
use crontab Auto backup dada

服务器有备份需求就写了个脚本
用linux 的 crontab 备份文件.
暂时没有删除功能


此脚本能备份指定文件夹
压缩包用日期格式.
还有备份日记


How to use:
编辑crontab
#:crontab -e

1 03 * * * /root/server_core/abk.sh >> /root/HDDISK/U_B222BACKUP/cron.log 2>&1
#2 03 * * * /CrontabScript/abk2.sh >> /root/HDDISK/MC25555BACKUP/cron.log 2>&1
