#triangle
if [ $# -ne 3 ]
then
echo "syntax is $0<no1><no2><no3>"
exit 1
fi
a=$1
b=$2
c=$3
if [ $a -le $b ]
then
t=$a
a=$b
b=$t
fi
if [ $a -le $c ]
then
t=$a
a=$c
c=$t
fi
echo "test..."
 
s1=`expr $b + $c` 
s2=`expr $c \* $c`
s3=`expr $b \* $b`
s4=`expr $a \* $a`
if [ $s1 -gt $a ]
then

echo "$a,$b,$c are side of triangle"
if [ $a -eq $b -a $b -eq $c ]
then
echo "equilateral triangle"
elif [ $a -eq $b -o $b -eq $c -eq $a ]
then
echo "isosceless triangle"
elif [ `expr $s2 + $s3` -eq $s4 ]
then
echo "right angled triangle"
else
echo "scalene triangle"
fi
else
echo "cannot form triangle"
fi

