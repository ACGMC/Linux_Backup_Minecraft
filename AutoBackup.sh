#!/bin/bash
#项目地址 https://github.com/ACGMC/Linux_Backup_Minecraft




#时间格式化
TM=`date +%m%d_%H_%M_%S`
M=`date +%m-月`

#备份到目标
BKD=/mnt/Backup-Local/MC

#记录备份动作操作过程
LGD=$BKD/logs

#服务端主目录
SERVER=/home/SER/MC

#要打包压缩的文件夹
dp=$SERVER/RE/dp
playerdata=$SERVER/RE/playerdata
region=$SERVER/RE/region

#判断有没有目标文件夹,没有就mkdir
if [ ! -d $BKD/$M ];then
   mkdir -pv $BKD/$M
fi

if [ ! -d $LGD ];then
   mkdir -pv $LGD
fi



#输出到logs用
echo "--------------------------"
echo $TM-开始备份数据...

#用绝对路径 zip可以换成7z tar 可配合在线解压工具
zip -rv $BKD/$M/$TM-region-主地图.zip $region > $LGD/$TM-region.log
zip -rv $BKD/$M/$TM-dp-地皮.zip $dp > $LGD/$TM-dp.log
zip -rv $BKD/$M/$TM-playerdata-背包.zip $playerdata > $LGD/$TM-playerdata.log

echo 操作完成.

endDate=`date +"%Y-%m-%d %H:%M:%S"`
echo "[$endDate] Successful"
echo "--------------------------"

