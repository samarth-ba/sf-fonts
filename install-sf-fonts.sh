#! /usr/bin/env bash

if [ "$(id -u)" == 0 ]; then
  echo -e "\n"
  echo "do not run as root! you will be asked for sudo password when needed."
  echo -e "\n"
  exit
fi

git clone https://github.com/thelioncape/San-Francisco-family

cd San-Francisco-family || exit

sudo mkdir /usr/share/fonts/sf-{pro,serif}
sudo mkdir /usr/share/fonts/sf-pro/{text,display}
sudo mkdir /usr/share/fonts/sf-serif/{text,display}

cd SF\ Pro || exit

sudo cp SF-Pro-Text-* /usr/share/fonts/sf-pro/text
sudo cp SF-Pro-Display-* /usr/share/fonts/sf-pro/display

cd .. || exit

cd SF\ Serif || exit

sudo cp Serif-UI-Text-* /usr/share/fonts/sf-serif/text
sudo cp Serif-UI-Display-* /usr/share/fonts/sf-serif/display

cd ../.. || exit

rm -rf San-Francisco-family/