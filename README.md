## Linux_Backup_Minecraft
> 用linux的crontab实现自动备份
> 适用各种需求

* 此脚本能备份指定文件夹
* 压缩包用日期格式.
* 还有备份日记
* 暂时没有删除功能
* 使用之前先自定义文件路径
* 注意给运行权限.
* 请先测试脚本运行时目标路径有没有写的权限
* 改权限用命令 chmod +rwx MC.sh
* r=读
* w=写
* x=执行



## How to use:

#### 编辑crontab
``` 
crontab -e
``` 
#### 设置每天3点1分运行:
``` 
1 03 * * * /mnt/Backup-Local/MC/AutoBackup.sh >> /mnt/Backup-Local/MC/cron.log 2>&1
``` 
#### 保存退出
```
:wq
``` 


#### 或直接用:
``` 
╭─root@D /mnt/Backup-Local 
╰─# sh MC.sh 
mkdir: 已创建目录 '/mnt/Backup-Local/MC'
mkdir: 已创建目录 '/mnt/Backup-Local/MC/06-月'
mkdir: 已创建目录 '/mnt/Backup-Local/MC/logs'
--------------------------
0618_04_53_30-开始备份数据...
操作完成.
[2021-06-18 04:53:35] Successful
--------------------------
╭─root@D /mnt/Backup-Local 
``` 




