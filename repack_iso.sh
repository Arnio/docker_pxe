mkdir preseeded 
cd preseeded && gzip -d < ../ubuntu/18.04/initrd.gz | cpio -id && c
cp ../mypreseed.cfg ../preseeded/preseed.cfg
find . | cpio -o -H newC | gzip > ../ubuntu/18.04/initrd.gz
cd .. && rm -rf preseeded 