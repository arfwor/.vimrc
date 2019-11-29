# UEFI
```
https://wiki.archlinux.org/index.php/HP_EliteBook_840_G1
```

# USB 盘名称
```
ARCH_201911
```

# 临时 wifi 连接
```
# wifi-menu
# dhcpcd wlan0
```

# fdisk -l
```
# mkfs.fat -F32 /dev/sda1
# mkfs.ext4 /dev/sda2
# mkswap /dev/sda3
# swapon /dev/sda3
```

# mount
```
# mount /dev/sda2 /mnt
# mkdir -p /mnt/boot/efi
# mount /dev/sda1 /mnt/boot/efi
```

# mirrorlist
```
# vim /etc/pacman.d/mirrorlist
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinux/$repo/os/$arch
```

# install base system
```
# pacstrap /mnt base linux linux-firmware
```

# fstab
```
# genfstab -U /mnt >> /mnt/etc/fstab
```

# 切换系统
```
# arch-chroot /mnt
```

# install soft
```
# pacman -S vi
# pacman -S vim
# pacman -S dhcpcd
# pacman -S wpa_supplicant
# pacman -S sudo
# pacman -S zsh
# pacman -S git
```

# 设置时区
```
# ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
# hwclock --systohc
```

# 设置本地化文本编码
```
# vim /etc/locale.gen
en_US.UTF-8 UTF-8
zh_CN.UTF-8 UTF-8

# locale-gen

# vim /etc/locale.conf
LANG=en_US.UTF-8
```

# 设置主机名
```
# vim /etc/hostname
archlinux
```

# 配置hosts文件
```
# vim /etc/hosts
127.0.0.1   localhost
::1         localhost
127.0.1.1   archlinux
```

# 用户账户配置
```
# passwd
# useradd dean -m -s /bin/zsh
# passwd dean
```

# sudo 命令配置
```
# visudo /etc/sudoers
dean ALL=(ALL) ALL
```

# 安装grub设置引导
```
# pacman -S intel-ucode
# pacman -S grub
# pacman -S efibootmgr
# grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=ArchLinux
# grub-mkconfig -o /boot/grub/grub.cfg
```

# 以上基本安装完成，可以 reboot 了

# wifi 设置（reboot 后执行，wifi 网卡名称可能不一样）
```
# wpa_passphrase "MI_21EC" "66778899" > /etc/wpa_supplicant/wpa_supplicant.conf
# wpa_supplicant -B -i wlo1 -c /etc/wpa_supplicant/wpa_supplicant.conf
# dhcpcd wlo1
```

# 字体安装
```
pacman -S adobe-source-han-sans-otc-fonts
```

# on-my-zsh 安装
```
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

# 安装图形界面
```
# 基础界面
# pacman -S gnome-shell gnome-backgrounds gnome-terminal gnome-keyring nautilus gdm networkmanager network-manager-applet

# 界面美化工具 (设置好后可以删除)
# pacman -S gnome-tweaks

# 根据 https://www.archlinux.org/groups/x86_64/gnome/ 选择安装
# pacman -S gnome-system-monitor eog evince gnome-screenshot

# 控制面板 (设置好后可以删除)
# pacman -S gnome-control-center

# 谷歌拼音
# pacman -S ibus-googlepinyin
gnome-control-center -> Settings > Region & Language > Input Source > + > Chinese > Chinese(Intelligent Pinyin)

# 主题、图标
# pacman -S arc-gtk-theme papirus-icon-theme
gnome-tweaks -> Appearance -> Applications (Arc-Dark) & Icons (Papirus)

# 浏览器
# pacman -S chromium

# 默认启动服务
# systemctl enable gdm
# systemctl enable NetworkManager
```

# 开发环境
```
pacman -S jdk11-openjdk
pacman -S gradle
pacman -S maven
pacman -S nodejs
```

# pacman
```
# 列出所有本地软件包
# pacman -Qq

# 列出所有显式安装
# pacman -Qqe

# 列出自动安装的包
# pacman -Qqd

# 列出孤立的包 (可以删除)
# pacman -Qqdt
```