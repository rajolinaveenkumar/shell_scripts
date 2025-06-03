USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
BOLD="e[1m"
UL="\e[4m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e ""
    else
        echo -e ""
    fi
}

if [ $USERID -ne 0 ]
then
    echo -e "ERROR:: $UL You must have sudo access to execute this script $N"
    exit 1 # other than 0
else 
    echo -e "$BOLD Script name: $0 is executing..... $N"
fi