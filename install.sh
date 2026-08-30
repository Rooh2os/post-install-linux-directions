# Make links
ln -sri files/.face ~/.face
ln -sri files/.gitconfig ~/.gitconfig
ln -sri files/.bash_aliases ~/.bash_aliases
ln -sri files/.LM_Logo.png ~/.LM_Logo.png

sudo apt install jp2a -y

#source ~/.bashrc

# Remove bloatware
apt purge firefox* celluloid gnome-calendar rhythmbox drawing thingy hypnotix libreoffice* mintchat pix thunderbird* transmission* -y

# Make Workspace and Programs
mkdir -p ~/Workspace ~/Documents/Programs
ln -sr ~/Documents/Programs ~/Programs

# Install Diodon
sudo apt install diodon vlc

# Install google-chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install ./google-chrome-stable_current_amd64.deb
rm -f google-chrome-stable_current_amd64.deb

# Install code
wget https://vscode.download.prss.microsoft.com/dbazure/download/stable/110a328ea54b42367b803ec53ee0bf52ef26b419/code_1.134.0-1787078834_amd64.deb
apt install ./code_1.134.0-1787078834_amd64.deb
rm -f code_1.134.0-1787078834_amd64.deb

# Install steam
wget https://cdn.fastly.steamstatic.com/client/installer/steam.deb
apt install ./steam.deb
rm -f steam.deb

# Install Vesktop
flatpak install dev.vencord.Vesktop md.obsidian.Obsidian io.github.nozwock.Packet com.github.PintaProject.Pinta com.tomjwatson.Emote -y

# Update
flatpak update -y && apt update && apt upgrade -y && apt autoremove --purge -y && apt autoclean -y
