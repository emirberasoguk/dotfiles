# Kali Linux Kurulum ve Konfor Rehberi 🚀

Bu rehber, OpenSUSE'deki tüm terminal alışkanlıklarını, aliaslarını ve araçlarını Kali Linux'a taşımak için hazırlanmıştır.

## 1. Adım: Temel Araçların Kurulumu
Terminal konforu için gereken modern araçları (eza, bat vb.) kuralım.
```bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y zsh kitty bat eza git curl build-essential

# bat komutunu düzeltme
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
```

## 2. Adım: Brave Browser
```bash
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update && sudo apt install brave-browser -y
```

## 3. Adım: Oh My Zsh & Eklentiler
```bash
# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Eklentiler
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

## 4. Adım: Dotfiles Senkronizasyonu (Chezmoi)
Az önce güncellediğimiz ayarları sisteme basar.
```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply emirberasoguk
```

## 5. Adım: Son Dokunuşlar
- Varsayılan shell'i Zsh yap: `chsh -s $(which zsh)`
- Kitty'yi varsayılan terminal olarak ayarla.
- Brave'i aç ve Sync kodunu gir.

Artık hazırsın! Kali terminalin tıpkı OpenSUSE gibi hissettirecek.
