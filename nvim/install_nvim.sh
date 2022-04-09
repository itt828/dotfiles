wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage && ./nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim

mkdir -p ~/.config/dein
ln -sr ./init.vim ~/.config/nvim/init.vim
ln -sr ./dein.toml ~/.config/dein/dein.toml
ln -sr ./dein_lazy.toml ~/.config/dein/dein_lazy.toml

