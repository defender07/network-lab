#set -vx
if [ $# -ne 0 ]
then
echo " syntax is $0"
fi
if [ $# -eq 0 ]
then
hr=` date  +%H `
u=`whoami `
if [ $hr  -gt 0 -a $hr -le 12 ]
then
echo "hello good morning $u"
elif [ $hr -gt 12 -a $hr -le 16 ]
then
echo "hello good afternoon $u"
else
echo "hello good evening $u"
fi
fi 



