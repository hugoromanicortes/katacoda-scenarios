#!/usr/bash

curl -fsSL -o kudo.tar.gz https://github.com/kudobuilder/kudo/releases/download/v0.12.0/kudo_0.12.0_linux_x86_64.tar.gz | tar -xzf kudo.tar.gz

if [ -f ./kubectl-kudo ]; then
	mv kubectl-kudo /usr/local/bin
fi