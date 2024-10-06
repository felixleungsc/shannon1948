set shell := ["nu", "-c"]

_default:
    @just --list --unsorted

# Download the tex files
download:
    curl -O https://9p.io/cm/ms/what/shannonday/shannon1948.tar.gz
    tar -zxvf shannon1948.tar.gz

# Using pandoc-math
pandoc-math:
    cd shannon1948; pandoc-math shannon1948.tex

# Using plasTex
plastex:
    cd shannon1948; plastex shannon1948.tex
