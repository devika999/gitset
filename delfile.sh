echo -n "Enter name of directory"
read directory
if test -d $directory
then
echo "$directory directory exist"
for i in `find $directory -size 0 -delete`
do
echo " "
done
echo "Zero sized files are sucessfully deleted"
else
echo "$directory does not exist"
fi

