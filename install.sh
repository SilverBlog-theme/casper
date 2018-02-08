#!/usr/bin/env bash
if [ $(basename `pwd`) != "templates" ];then
    echo "[Error] Please do this in the templates directory!"
    exit
fi
if [ ! -d "casper" ]; then
    git clone https://github.com/SilverBlogTheme/casper.git --depth 1
fi
ln -sv ../casper/static ./static/casper
cd casper
if [ -f "config.example.json" ]; then
    cp config.example.json config.json
    vim config.json
fi
