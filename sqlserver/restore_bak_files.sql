RESTORE DATABASE AnalyticsDistribution FROM DISK = '/var/opt/mssql/backup/AnalyticsDistribution.bak' WITH REPLACE,
	MOVE 'AnalyticsDistribution' TO '/var/opt/mssql/data/AnalyticsDistribution.mdf',
	MOVE 'AnalyticsDistribution_log' TO '/var/opt/mssql/data/AnalyticsDistribution_log.ldf';
	
RESTORE DATABASE IdentityAccessManagement FROM DISK = '/var/opt/mssql/backup/IdentityAccessManagement.bak' WITH REPLACE,
	MOVE 'IdentityAccessManagement' TO '/var/opt/mssql/data/IdentityAccessManagement.mdf',
	MOVE 'IdentityAccessManagement_log' TO '/var/opt/mssql/data/IdentityAccessManagement_log.ldf';
	
RESTORE DATABASE MyAgrovision FROM DISK = '/var/opt/mssql/backup/MyAgrovision.bak' WITH REPLACE,
	MOVE 'MyAgrovision' TO '/var/opt/mssql/data/MyAgrovision.mdf',
	MOVE 'MyAgrovision_log' TO '/var/opt/mssql/data/MyAgrovision_log.ldf';
	
RESTORE DATABASE PigGSA FROM DISK = '/var/opt/mssql/backup/PigGSA.bak' WITH REPLACE,
	MOVE 'PigGSA' TO '/var/opt/mssql/data/PigGSA.mdf',
	MOVE 'PigGSA_log' TO '/var/opt/mssql/data/PigGSA_log.ldf';
	
RESTORE DATABASE PigSettings FROM DISK = '/var/opt/mssql/backup/PigSettings.bak' WITH REPLACE,
	MOVE 'PigSettings' TO '/var/opt/mssql/data/PigSettings.mdf',
	MOVE 'PigSettings_log' TO '/var/opt/mssql/data/PigSettings_log.ldf';