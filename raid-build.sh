#!/bin/bash



dev_list=/dev/sdb /dev/sdc /dev/sdd /dev/sde /dev/sdf
raid_dev=/dev/md/raid
level=6
number=5


# Подготовка, занулить суперблоки
sudo mdadm --zero-superblock --force $dev_list

# Создание массива Raid
sudo mdadm --create $raid_dev -l $level -n $number $dev_list

echo "Raid$number build done."
