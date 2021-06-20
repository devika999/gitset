while true
do 
echo " ...Simple Calculator..."
echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "5.Exit"
echo "Enter your choice"
read ch
if test $ch -eq 1
then
echo "Enter two numbers"
read x
read y
r=$(( $x + $y))
echo "Result is: $r"
sleep 2
elif test $ch -eq 2
then
echo "Enter two numbers"
read x
read y
r=$(( $x - $y))
echo "Result is: $r"
sleep 2
elif test $ch -eq 3
then
echo "Enter two numbers"
read x
read y
r=$(( $x * $y))
echo "Result is: $r"
sleep 2
elif test $ch -eq 4
then
echo "Enter two numbers"
read x
read y
r=$(( $x / $y))
echo "Result is: $r"
sleep 2
else 
echo "stopping the script"
sleep 1
exit
fi
done

