#!/bin/bash
echo $1 > version.txt
cp version.txt debian/.
cp version.txt centos/.
cp version.txt alpine/.
git commit -m 'versao nova' version.txt debian/version.txt centos/version.txt alpine/version.txt
git tag -a $1 -m $(date +%Y%m%d)
git push origin $1
