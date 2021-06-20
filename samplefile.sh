echo "Enter a filename"
read filename

if test $filename
then
text=`cat $filename`
w=`echo $text | wc -w`
w=$(($w))
c=`echo $text | wc -c`
c=$((`$c – 1`))
s=0
alpha=0
j=" "
n=1
while test $n -le $c 
do
ch=`echo $text | cut -c $n`
if test "$ch" = "$j"
then
s=$(($s+1))
fi
case $ch in
a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z)  alpha=$(( $alpha+1));;
esac
n=$(($n+1))
done
special=$(($c–$s–$alpha))
echo "Words = $w"
echo "Characters = $c"
echo "Spaces = $s"
echo "Special symbols = $special"
fi
exit
