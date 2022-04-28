#/bin/bash
# trap ctrl-c and call ctrl_c()
clear

trap ctrl_c INT

HEIGHT=15
WIDTH=60
CHOICE_HEIGHT=30
BACKTITILE="SSH SERVER"
TITLE="GUI"
MENU="CHOOSE ONE:"
CANCEL="EXIT"

OPTIONS=(1 "WEB SERVER"
		 2 "FTP SERVER"
		 3 "FILE SERVER"
		 4 "DOMAIN SERVER"
		 0 "EXIT"
	    )

CHOICE=$(dialog --clear \
		 --backtitle "$BACKTITLE" \
		 --cancel-label "$CANCEL" \
		 --title "$TITLE" \
		 --menu "$MENU" \
		 $HEIGHT $WIDTH $CHOICE_HEIGHT \
		 "${OPTIONS[@]}" \
		 2>&1 >/dev/tty)

function ctrl_c() {
		echo
		echo "CTRL-C by user"
		exec
		kill -9 -1

}


clear 
case $CHOICE in 
	0) 
		echo exit
		exit
		;;

	1)
		clear 
		sleep 2
		echo "ssh user@server"
		#ssh  user@192.168.10.10
		;;

	2)
		clear 
		sleep 2
		echo "ssh user@server"
		#ssh  user@192.168.10.11
		;;
	3)
		clear 
		sleep 2
		echo "ssh user@server"
		#ssh  user@192.168.10.12
		;;
	
	4)
		clear 
		sleep 2
		echo "ssh user@server"
		#ssh  user@192.168.10.13
		;;
	esac