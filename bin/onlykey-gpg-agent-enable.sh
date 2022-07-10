#!/bin/bash

systemctl --user enable onlykey-gpg-agent.socket
systemctl --user start onlykey-gpg-agent.service

echo "Remember to set the GNUPGHOME variable to use GNUPG with onlykey"