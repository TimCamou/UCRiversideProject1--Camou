cat $1_Dealer_schedule | awk -F" " '{print $1,$2,"$4,$5"}' | grep "$2" "$3"

