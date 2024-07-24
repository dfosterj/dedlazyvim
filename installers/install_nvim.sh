
NVIM_PKG='https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz'

curl -LO $NVIM_PKG
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

rm ./nvim-linux64.tar.gz

echo '' >> ~/.bashrc
echo '#nvim' >> ~/.bashrc
echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> ~/.bashrc
source ~/.bashrc
