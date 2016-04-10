vagrant init ubuntu/trusty64; vagrant up --provider virtualbox
sudo apt-get install git
vagrant ssh git clone https://github.com/dlevy-ibm/fdb_bug.git
fdb_bug/fdbappend.sh