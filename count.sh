#to count number of words and lines in a file
if [ $# -gt 1 ]
then
 echo "syntax is <$0> [<file name>]"
 exit 1
fi
flag=0
if [ $# -eq 1 ]
then
 term=`tty`
 exec < $1
fi
while read line 
do
