# UEFI
```
https://wiki.archlinux.org/index.php/HP_EliteBook_840_G1
```

# fdisk -l
```
mkfs.fat -F32 /dev/sda1
mkfs.ext4 /dev/sda2
mkswap /dev/sda3
swapon /dev/sda3
```

# mount
```
mount /dev/sda2 /mnt
mkdir -p /mnt/boot/efi
mount /dev/sda1 /mnt/boot/efi
```

# mirrorlist
```
vim /etc/pacman.d/mirrorlist
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinux/$repo/os/$arch
```

# install base system
```
pacstrap /mnt base linux linux-firmware
```

# fstab
```
genfstab -U /mnt >> /mnt/etc/fstab
```

# 切换系统
```
arch-chroot /mnt
```

# install vim
```
pacman -S vim
```

# 设置时区
```
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
hwclock --systohc
```

# 设置本地化文本编码
```
vim /etc/locale.gen
en_US.UTF-8 UTF-8
zh_CN.UTF-8 UTF-8

# locale-gen

vim /etc/locale.conf
LANG=en_US.UTF-8
```

# 设置主机名
```
vim /etc/hostname
archlinux
```

# 配置hosts文件
```
vim /etc/hosts
127.0.0.1   localhost
::1         localhost
127.0.1.1   archlinux
```

# 用户账户配置
```
# passwd
# useradd -m dean
# passwd dean
```

# 安装grub设置引导
```
# pacman -S intel-ucode
# pacman -S grub
# pacman -S efibootmgr
# grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=ArchLinux
# grub-mkconfig -o /boot/grub/grub.cfg
```

# 安装图形界面
```
# pacman -S gnome
# systemctl enable gdm
```