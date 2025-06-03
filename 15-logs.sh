USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
BOLD="e[1m"
UL="\e[4m"

LOG_FOLDER="/var/log/shell_logs"
LOG_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOG_FOLDER/$LOG_FILE-$TIMESTAMP.log"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$R Installing $2 is ............FAILURE $N"
        exit 1
    else
        echo -e "$G Installing $2 is ............SUCCESS $N"
    fi
}

echo "$0 Script started executing at: $TIMESTAMP" &>>$LOG_FILE_NAME

if [ $USERID -ne 0 ]
then
    echo -e "ERROR:: $UL You must have sudo access to execute this script $N"
    exit 1 # other than 0
else 
    echo -e "$G Script name: $0 is executing..... $N"
fi

dnf list installed mysql &>>$LOG_FILE_NAME 
if [ $? -ne 0 ]
then 
    dnf install mysql -y &>>$LOG_FILE_NAME 
    VALIDATE $? "MYSQL"
else
    echo -e "$Y MySQL is already ... INSTALLED $N" 
fi 

dnf list installed git &>>$LOG_FILE_NAME

if [ $? -ne 0 ]
then
    dnf install git -y &>>$LOG_FILE_NAME 
    VALIDATE $? "Git"
else
    echo -e "$Y Git is already ...  INSTALLED $N"
fi