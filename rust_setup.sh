
#!/bin/bash

# do a fresh intall of rust

rustup self uninstall

sudo apt update 


sudo apt install curl


echo -n `curl --version`


curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


source $HOME/.cargo/env

echo `rustc --version`



