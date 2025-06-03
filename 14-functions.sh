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
        echo -e "$R Installing $2 is ............FAILURE $N"
        exit 1
    else
        echo -e "$G Installing $2 is ............SUCCESS $N"
    fi
}

if [ $USERID -ne 0 ]
then
    echo -e "ERROR:: $UL You must have sudo access to execute this script $N"
    exit 1 # other than 0
else 
    echo -e "$G Script name: $0 is executing..... $N"
fi

dnf list installed mysql
if [ $? -ne 0 ]
then 
    dnf install mysql -y
    VALIDATE $? "MYSQL"
else
    echo -e "$Y MySQL is already ... INSTALLED $N" 
fi 

dnf list installed git

if [ $? -ne 0 ]
then
    dnf install git -y
    VALIDATE $? "Git"
else
    echo -e "$Y Git is already ...  INSTALLED $N"
fi