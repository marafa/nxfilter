#!/bin/bash
echo $1 > versao.txt
cp versao.txt debian/.
cp versao.txt centos/.
cp versao.txt alpine/.
