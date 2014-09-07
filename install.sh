#!/bin/bash

mkdir -p ~/.ssh
cat ssh/config* > ~/.ssh/config

cat shell/.gitconfig > ~/.gitconfig
cat shell/.gitignore_global > ~/.gitignore_global

cat osx/.profile shell/aliases > ~/.profile
