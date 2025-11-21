#update:
sudo apt update -y
sudo apt upgrade -y

#dependencies:
sudo apt install gcc make -y
sudo apt install libpcre3-dev zlib1g-dev -y
sudo apt install libssl-dev -y
sudo apt install wget -y

#install nginx:
cd ~/
git clone https://github.com/nginx/nginx.git
cd nginx/ 

auto/configure

#Compiling
make
sudo make install

sudo /usr/local/nginx/sbin/nginx


#install tor:
wget "https://www.torproject.org/dist/torbrowser/15.0.2/tor-browser-linux-x86_64-15.0.2.tar.xz"        
tar -xzvf tor-browser-linux-x86_64-15.0.2.tar.xz
cd tor-brwser-linux-x86_64-15.0.2     

./configure –prefix=”$HOME/tor” –exec-prefix=”$HOME”

make 
install make

mkdir -p ~/tor/var/lib/tor/hidden_service     

cp ~/tor/etc/tor/torrc.sample ~/.torrc 

#start
curl localhost
