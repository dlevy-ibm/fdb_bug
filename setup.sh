vagrant init ubuntu/trusty64; vagrant up --provider virtualbox
vagrant ssh default -c "sudo apt-get -y install git"
vagrant ssh default -c "git clone https://github.com/dlevy-ibm/fdb_bug.git"
vagrant ssh default -c "cd fdb_bug && ./fdbappend.sh"