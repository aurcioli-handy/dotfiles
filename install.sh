#!/bin/bash
RED='\033[0;91m'         # Red
GREEN='\033[0;92m'       # Green
RESET='\033[0m'

cp _vimrc ~/.vimrc
echo -e "${RED}[+] ${GREEN}Installing plug.vim${RESET}\n"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo -e "${RED}[+] ${GREEN}Downloading color schemes${RESET}\n"
mkdir -p ~/.vim
git clone https://github.com/flazz/vim-colorschemes.git ~/.vim/colors
cp -R ~/.vim/colors/colors/ ~/.vim/colors
rm -rf ~/.vim/colors/colors/

echo -e "${RED}[+] ${GREEN}Installing ctrlp.vim${RESET}\n"
cd ~/.vim
git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim


echo -e "${RED}[+] ${GREEN}All done, just run :PlugInstall and you're all set!${RESET}\n"


