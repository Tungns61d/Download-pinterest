fileout="link.txt"
cat new.txt| grep "pinimg.com/" | awk '{print $1}' |grep -v "webapp" > $fileout
sed -i 's/236x/originals/g' $fileout
sed -i 's/474x/originals/g' $fileout
sed -i 's/736x/originals/g' $fileout
sort $fileout -u -o $fileout

#sort link.txt -u -o link.txt
