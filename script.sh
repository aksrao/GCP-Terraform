#!bin/bash

sudo groupadd admin
sudo useradd akshay.rao
sudo passwd akshay.rao
sudo usermod -aG admin akshay.rao
echo "%admin ALL=(ALL) ALL" | sudo tee -a /etc/sudoers > /dev/null
sudo mkdir -p /home/akshay.rao/.ssh  
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCmFJx2Yz9TJXEXjuDNFBqV8NLAXoJ5rD04EfJka+8iekPk3UwtvT3Nzt7DjlORKO6Gb0KgZURNsqBuE9z+xrMHYMdgTChrcgxY+ymu+8LbTcw/cskxya6wchds76kPrVVDvQpvFchWiPMNdF0unKgJWxqebcClRL2vkGh3Di3EJiZGAsSs8Z3WSbd96RWtXQ3ZiNjPuyQTG3s7JkrsluMgknR2AuDYwlgSyw5s2ap7EgIf94pHRQHcktggA8KhcMCzL1xkB3W5AZZuTK53YepXliey7dPBph/lXhNskJ7KnwH4wsfqsUVobxEcmlVKSCh1qlnnxgz6XUPJB4ETaFqazrGBbW3Sg/Ffea0wQzj9MHZfQsK9DHyRsoYpj/TwBIqLAmJEX7rjyJkx065wRM2dTQcjhhdWQbT9EyaKsioOD7TkVd93lOjA93Mel1ktYxSwTpF/4p/jZ0/y+KNsnb0iy/kwYKC6B2cmvb4AkZQuF6p6WzhFuIWhxenmIEFZ99Hx3QletjacNUIPtCTA5dtexBVWLRAwFHF1WnKg+Bqkh6xeJ8juaRqBLWlxtRVPcqMFI8TYcTzDNGPQNON1HyM4WWdbdAIhC86q+awJHGOEHv1vQK6Aa/RIRZI1ClQsLxBTRpMXfOzOkixZmVxmGfaQfDphjQIWg29BvUpfJoqfUQ== akshay.rao" | sudo tee -a /home/akshay.rao/.ssh/authorized_keys > /dev/null  
sudo chown -R akshay.rao:akshay.rao /home/akshay.rao/.ssh
sudo chmod 700 /home/akshay.rao/.ssh
sudo chmod 600 /home/akshay.rao/.ssh/authorized_keys
