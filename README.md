# Linux_Backup_Minecraft
use crontab Auto backup dada

服务器有备份需求就写了2个脚本
用linux 的 crontab 备份文件.
暂时没有删除功能
用之前先自定义文件路径
注意给运行权限.
请先测试脚本运行时目标路径有没有写的权限
权限用命令 chmod +rwx 目录
r=读
w=写
x=执行



此脚本能备份指定文件夹
压缩包用日期格式.
还有备份日记


How to use:

编辑crontab
crontab -e
每天3点1分运行:

1 03 * * * /mc/abk1.sh >> /mnt/Backup-Local/MC/cron.log 2>&1


#2 03 * * * /mc/abk2.sh >> /mnt/Backup-Local/MC/cron.log 2>&1



