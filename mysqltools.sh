#!/bin/bash
case $1 in
	backup)
		echo "Backup MySql Database"
                echo -n Host:
                read host
                echo -n Username:
                read username
                echo -n Password: 
                read -s password
                echo
                echo -n Database:
                read database
                mysqldump -u$username -p$password $database > $database.sql	
                ls $database.sql
	;;
	restore)
		echo "Restore MySql Database"
                echo -n Host:
                read host
                echo -n Username:
                read username
                echo -n Password: 
                read -s password
                echo
                echo -n Database:
                read database
                echo -n BackupFileName:
                read file
                mysql -u$username -p$password $database < $file
		;;
	*)
		echo "Sorry, I don't understand"
		echo "type backup for backup database or restore to restore the database"
		;;
esac
