arr[0]="Randerson"
arr[1]="Glauber"
arr[2]="Maykon"
arr[3]="Padoan"

rand=$[ $RANDOM % 4 ]
echo ${arr[$rand]}
