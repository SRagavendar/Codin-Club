## view /etc/passwd file :
cat /etc/passwd

## Print the 1st field from /etc/passwd file :
awk -F ':' '{print $1}' /etc/passwd

## Print all userids > 1000 :
awk -F ':' '$3>=1000 {print "Name : " $1 ", User Id : " $3}' /etc/passwd

## Print the 2nd field to get home directory :
awk -F ':' '$3>=1000 {print $6}' /etc/passwd

## Use command substitution to get user list and home directory :
a=`awk -F ':' '{print "Name : " $1}' /etc/passwd`
b=`awk -F ':' '{print  "Home Dir : " $6}' /etc/passwd`
echo $a $b

## Change ownership of above home directory with user which is retrieved above :
sudo chown -R $a:$b
