![Captura de Tela](files/screenshot.png)

# DraculaMyXubuntu (DMX)

Um *bash script* para fazer todas as instalações, configurações e desinstalações iniciais no Xubuntu 20.04 para um ambiente de desenvolvimento leve e pessoal.

Este código foi desenvolvido para sistemas recém-instalados.  
Não nos responsabilizamos pelo sua execução em outras circunstâncias.

Para instalações individuais veja:
* [matheus-souza/backpack](https://github.com/matheus-souza/backpack)

## Remove
* Dicionário (xcfe4-dict)
* File Roller
* Firefox
* Gigolo
* GIMP
* GTK Settings
* Jogos
* LibreOffice
* Softwares para Impressoras
* Mousepad
* Notas (xfce4-notes)
* Reprodutor de mídia Parole
* Pidgin
* Sobre mim (mugshot)
* Scanner de documentos (simple-scan)
* Thunderbird
* Transmission
* Visualizador de Documentos Atril
* Xfburn
* Yelp

## Instala
* Google Chrome
* Docker
* FileZilla
* Git
* Insomnia
* Nemo
* Node.js, Expo-CLI e Yarn
* PIP do Python
* PHP
* Spotify
* Snap
* VS Code
* ZSH, Oh My ZSH e Powerlevel10k

## Aliases (Atalhos de comandos)
Veja a [lista de todos os atalhos](/ALIASES.md) de comandos são criados. Para mais detalhes, veja os arquivos [.bash_aliases](/files/.bash_aliases) e .[bash_profile](/files/.bash_profile).

## Configurações manuais (por enquanto)
* **Aplicativos preferidos:** Definir como padrão Chrome e Nemo `nemo %s`.
* **VS Code:** Configure Settings Sync.
* **Insomnia:** Selecionar Dracula como tema.
* **Git:** Credênciais fornecidas serão salvas de maneira global.

## A fazer
* [ ] Configurar tecla SUPER (Win)
* [ ] Colocar Gmail como padrão

## Execução
No terminal de sua preferência, execute a única linha abaixo. O sistema será **reiniciado** ao final.  
Espere o segundo pedido de senha, após isso o processo não precisa de acompanhamento.  
A execução total demora cerca de 50 minutos e aumenta o uso de disco em aproximadamente 1.5GB.
```
cd ~/Downloads && wget -c https://github.com/FagnerJB/DraculaMyXubuntu/archive/master.zip -O ./DMXubuntu.zip && unzip -q ./DMXubuntu.zip && cd DraculaMyXubuntu-master && chmod +x ./run.sh && ./run.sh
```

### Somente terminal (WSL)
Versão experimental que só instala softwares CLI ("terminal").

```
cd ~/Downloads && wget -c https://github.com/FagnerJB/DraculaMyXubuntu/archive/master.zip -O ./DMXubuntu.zip && unzip -q ./DMXubuntu.zip && cd DraculaMyXubuntu-master && chmod +x ./only_terminal.sh && ./only_terminal.sh
```

### Pré-requisitos
Em alguns sistemas (WSL) você precisará antes executar:
```
mkdir ~/Downloads && sudo apt install unzip
```

## Links
* [Xubuntu](https://xubuntu.org/download/) - Baixar Xubuntu
* [VMware Player](https://www.vmware.com/products/workstation-player/workstation-player-evaluation.html) - Virtualizador recomendado
