#!/usr/bin/bash
git submodule update --init --recursive
git subodule foreach git pull origin master
