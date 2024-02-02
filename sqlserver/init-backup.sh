#!/bin/bash

set -e

DATA_DIR=C:/Users/martijn.dormans/Documents/agro/Misc/Db/data
BAK_FILES=("AnalyticsDistribution" "IdentityAccessManagement" "MyAgrovision" "PigGSA" "PigSettings" "ServerMgr")

cd $DATA_DIR

printf "Files already in the database: \n"
dir

for f in ${BAK_FILES[@]}; do
    rm -f $f.mdf
    touch $f.mdf

    rm -f ${f}_log.ldf
    touch ${f}_log.ldf
done

printf "Restoring BAK files... \n"

mssql-cli -U sa -P longpassword -S localhost -i restore_bak_files.sql

printf "BAK files restored, process completed \n"