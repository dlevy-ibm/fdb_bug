vagrant init ubuntu/trusty64; vagrant up --provider virtualbox
vagrant ssh default -c "cd /vagrant && ./fdbappend.sh"