HEIGHT=15
WIDTH=60
CHOICE_HEIGHT=7
BACKTITLE=" Script by DEDS3C"
TITLE="rclone Installer "
MENU="Choose one of the following options:"

OPTIONS=(1 "Install rclone FreeBSD i386"
         2 "Install rclone FreeBSD AMD64"
         3 "Install rclone FreeBSD ARM"
         4 "Install rclone Linux  386"
         5 "Install rclone Linux AMD64"
         6 "Install rclone Linux ARM")
CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            echo "Installing rclone FreeBSD i386"
            rm -rf rclone*.zip
            bash <(curl -Ss https://raw.githubusercontent.com/DEDS3C/rclone-dl/master/rclone.sh) ncw/rclone freebsd-386 zip
            unzip -o rclone-*-freebsd-386.zip
            cd rclone-*-freebsd-386
            echo "Please elevate to sudo / root in order to copy files to your bin folder"
            su
            cp rclone /usr/bin
            chown $USER:$USER /usr/bin/rclone
            chmod 755 /usr/bin/rclone
            ;;
        2)
            echo "Installing rclone FreeBSD AMD 64"
            rm -rf rclone*.zip
            bash <(curl -Ss https://raw.githubusercontent.com/DEDS3C/rclone-dl/master/rclone.sh) ncw/rclone free-amd64 zip
            unzip -o rclone-*-freebsd-amd64.zip
            cd rclone-*-freebsd-amd64
            echo "Please elevate to sudo / root in order to copy files to your bin folder"
            su
            cp rclone /usr/bin
            chown $USER:$USER /usr/bin/rclone
            chmod 755 /usr/bin/rclone
            ;;
        3)
            echo "Installing rclone FreeBSD ARM"
            rm -rf rclone*.zip
            bash <(curl -Ss https://raw.githubusercontent.com/DEDS3C/rclone-dl/master/rclone.sh) ncw/rclone freebsd-arm zip
            unzip -o rclone-*-freebsd-arm.zip
            cd rclone-*-freebsd-arm
            echo "Please elevate to sudo / root in order to copy files to your bin folder"
            su
            cp rclone /usr/local/sbin
            chown $USER:$USEr /usr/bin/rclone
            chmod 755 /usr/bin/rclone
            ;;

        4)

            echo "Installing rclone Linux i386"
            rm -rf rclone*.zip
            bash <(curl -Ss https://raw.githubusercontent.com/DEDS3C/rclone-dl/master/rclone.sh) ncw/rclone linux-386 zip
            unzip -o rclone-*-linux-386.zip
            cd rclone-*-linux-386
            sudo cp rclone /usr/bin/
            sudo chown root:root /usr/bin/rclone
            sudo chmod 755 /usr/bin/rclone
            ;;
        5)
            echo "Installing rclone Linux AMD64"
            rm -rf rclone*.zip
            bash <(curl -Ss https://raw.githubusercontent.com/DEDS3C/rclone-dl/master/rclone.sh) ncw/rclone linux-amd64 zip
            unzip -o rclone-*-linux-amd64.zip
            echo "Please elevate to sudo / root in order to copy files to your bin folder"
            su
            cd rclone-*-linux-amd64
            cp rclone /usr/bin/
            chown $USER:$USER /usr/bin/rclone
            chmod 755 /usr/bin/rclone
            ;;
        6)

            echo "Installing rclone Linux ARM"
            rm -rf rclone*.zip
            bash <(curl -Ss https://raw.githubusercontent.com/DEDS3C/rclone-dl/master/rclone.sh) ncw/rclone linux-arm zip
            unzip -o rclone-*-linux-arm.zip
            cd rclone-*-linux-arm
            sudo cp rclone /usr/bin/
            sudo chown root:root /usr/bin/rclone
            sudo chmod 755 /usr/bin/rclone
            ;;



esac
