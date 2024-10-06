set shell := ["nu", "-c"]

_default:
    @just --list --unsorted

# Download the tex files
download:
    curl -O https://9p.io/cm/ms/what/shannonday/shannon1948.tar.gz
    tar -zxvf shannon1948.tar.gz

# Convert
convert:
    cd shannon1948; plastex shannon1948.tex; mv shannon1948/shannon1948 docs
