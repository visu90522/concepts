
VALIDATE() {
    if [ $? -ne 0 ]
    then
        echo "Installation of mysql is failure"
        exit1
    else
        echi "Installation of mysql is success"
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

