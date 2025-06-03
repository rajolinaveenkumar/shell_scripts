file="/home/ec2-user/shell_scripts/19-install-with-loops.sh"

while read -r line
do
    echo $line
done < $file