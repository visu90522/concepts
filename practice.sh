
VALIDATE() {
    if [ $1 -ne 0 ]
    then
        echo "Installation .... failure"
        exit1
    else
        echo "Installation .... success"
    fi
}

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: please run with root user"
    exit1
fi

yum install mysql -y

VALIDATE $? "Installing MYSQL"

yum install postfix -y

VALIDATE $? "Installing POSTFIX"

