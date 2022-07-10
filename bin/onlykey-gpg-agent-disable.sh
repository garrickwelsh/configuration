#!/bin/bash

systemctl --user disable onlykey-gpg-agent.socket
systemctl --user stop onlykey-gpg-agent.service
systemctl --user stop onlykey-gpg-agent.socket
killall onlykey-gpg-agent
killall gpg-agent

echo "Remember to unset the GNUPGHOME variable to use GNUPG without onlykey"