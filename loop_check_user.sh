LISTE_USERS=$(cat /etc/passwd \
	      | grep /usr/sbin/nologin \
	      | awk -F: '{print $1}')

for USER in $LISTE_USERS;
do
	echo "======= Check l'user $USER ======="
	sudo bash ./check_user_v2.sh $USER;
	sleep 1; 
done

