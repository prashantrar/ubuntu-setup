# ref. https://github.com/jonas/tig/issues/39#issuecomment-4992269
sudo aptitude install automake libncurses5-dev libncursesw5-dev
mkdir -p $HOME/local/src
cd $HOME/local/src
git clone https://github.com/jonas/tig
cd tig
git checkout tig-2.0.3
./autogen.sh
./configure --prefix=$HOME/local
make
make install
git checkout master
