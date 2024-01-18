
VALIDATE() {
    if [ $? -ne 0 ]
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

VALIDATE $?

yum install postfix -y

VALIDATE $?

