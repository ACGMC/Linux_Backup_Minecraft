#!/bin/bash
BTM=`date +%m%d_%H_%M_%S`
LGD=/root/HDDISK/MC25555BACKUP/logs/
BKD=/root/HDDISK/MC25555BACKUP/


echo "--------------------------"
echo $BTM-开始备份数据...


cd /home/mc25555/mcs/world

tar -zcvf $BKD$BTM-region.tar.gz ./region/ > $LGD/$BTM-region.log
tar -zcvf $BKD$BTM-dp.tar.gz ./dp/ > $LGD/$BTM-dp.log
tar -zcvf $BKD$BTM-playerdata.tar.gz ./playerdata/ > $LGD$BTM-playerdata.log

echo 操作完成.

endDate=`date +"%Y-%m-%d %H:%M:%S"`
echo "[$endDate] Successful"
echo "--------------------------"

