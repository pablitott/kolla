# source https://www.tecmint.com/add-new-disks-using-lvm-to-linux/
# this script must be run with admin rights
yum install lvm2 -y
lsblk

fdisk -l
# # partitions the 2 volumes
# Create a new DOS disklabel with disk identifier 0xc1e51c37
sfdisk /dev/sdb < fdisk40Gb
sfdisk /dev/sdc < fdisk40Gb
# use n to create a partition and w to save

#create a volume group
pvcreate cinder-volumes /dev/sdb1
pvcreate cinder-volumes /dev/sdc1

vgcreate cinder-volumes /dev/sdb1 /dev/sdc1
vgdisplay

# create Logical volumes
lvcreate -n lv_data1 --size 12G cinder-volumes
lvcreate -n lv_data2 --size 14G cinder-volumes

lvdisplay

# Format the Logical Volums (LV’s) to ext4 format.
mkfs.ext4 /dev/cinder-volumes/lv_data1
mkfs.ext4  /dev/cinder-volumes/lv_data2

mkdir /data1 /data2 2>/dev/nul

mount /dev/cinder-volumes/lv_data1 /data1
echo "this is test.txt" > /data1/test.txt
mount /dev/cinder-volumes/lv_data2 /data2
echo "this is data2" > /data2/text2.txt
