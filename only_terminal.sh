echo_string(){
    printf '\033[35m'
    echo "${1} / $(date +%T) / (㇏(•̀ᵥᵥ•́)ノ)"
    printf '\033[m'
}

printf '\033[35m'
cat <<-'EOF'
 ________                            \__/
 \______ \____________    ____  __ __|  | _____
  |    |  \_  __ \__  \ _/ ___\|  |  \  | \__  \
  |    `   \  | \// __ \\  \___|  |  /  |__/ __ \_
 /_______  /__|  (____  /\___  >____/|____(____  /
 __  __  \/  __  __   \/_    \/           _    \/
|  \/  |_   _\ \/ /   _| |__  _   _ _ __ | |_ _   _
| |\/| | | | |\  / | | | '_ \| | | | '_ \| __| | | |
| |  | | |_| |/  \ |_| | |_) | |_| | | | | |_| |_| |
|_|  |_|\__, /_/\_\__,_|_.__/ \__,_|_| |_|\__|\__,_|
        |___/      por Fagner JB. (fagnerjb.com)
EOF
printf '\033[m'

echo_string "Iniciando"

echo_string "Instalando ZSH"
sudo apt install -qy zsh

echo_string "Senha para definir ZSH como padrão"
chsh -s /bin/zsh

echo_string "Instala dependencias ao apt"
sudo apt install -qy apt-transport-https ca-certificates curl gnupg-agent software-properties-common

echo_string "Atualiza repositórios"
sudo apt -q update

echo_string "Instalando Git"
sudo apt install -qy git

echo_string "Instalando NVM"
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

echo_string "Instalando Node.js LTS"
source ~/.bashrc
nvm install --lts

echo_string "Instalando PIP (Python)"
sudo apt install -qy python3-pip python-is-python3

echo_string "Instalando Arruma dependências"
sudo apt install -qyf

echo_string "Instalando Oh My ZSH"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

echo_string "Instalando Powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo_string "Instalando Zinit"
mkdir $HOME/.zinit && git clone https://github.com/zdharma/zinit.git $HOME/.zinit/bin

echo_string "Atualiza instalados"
sudo apt -qy upgrade

FILES=$HOME/Downloads/DraculaMyXubuntu-master/files

echo_string "Copia novos aliases"
cp -f $FILES/.bash_aliases $HOME/.bash_aliases
cp -f $FILES/.bash_profile $HOME/.bash_profile

echo_string "Configura ZSH"
cp -f $FILES/.zshrc $HOME/
cp -f $FILES/.p10k.zsh $HOME/

echo_string "Apaga instaladores baixados"
rm ~/Downloads/DMXubuntu.zip

echo_string "Limpa pacotes"
sudo apt -qy clean

echo_string "Remove dependências não mais necessárias"
sudo apt -qy autoremove

echo_string "Limpa cache"
sudo apt -qy autoclean
