#!/bin/bash
#
# Test 701.  Import tpch100.
#
TEST=test701
STATUSTEXT="701 Import tpch100                 : " 

if [ -z "$MYSQLCMD" ]; then
        MYSQLCMD="/usr/local/Calpont/mysql/bin/mysql --defaults-file=/usr/local/Calpont/mysql/my.cnf -u root"
        export MYSQLCMD
fi

./import100.sh tpch100 > $TEST.log

status=`tail -1 $TEST.log`

#
# Populate the .status file.
#
errorCount=`grep -i error $TEST.log | wc -l`

if [ $errorCount -gt 0 ]
then
        echo "$STATUSTEXT Failed (Check $TEST.log for errors)" > $TEST.status
else
        echo "$STATUSTEXT Passed $status" > $TEST.status
fi

cat $TEST.status
