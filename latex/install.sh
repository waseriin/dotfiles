wget http://ftp.jaist.ac/jp/pub/CTAN/systems/texlive/tlnet/install-tl.zip
unzip install-tl.zip
cd install-tl-*
sudo ./install-tl

sudo tlmgr update --self --all
sudo tlmgr install `cat pkglist-tlmgr.txt`
sudo tlmgr paper a4

