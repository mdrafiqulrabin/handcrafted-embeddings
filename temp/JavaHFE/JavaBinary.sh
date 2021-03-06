#!/bin/bash

mN=470
mDataRoot="/scratch/rabin/data/code2vec/handcrafted/t${mN}"
jType="java-large"

mMethods=("nonTarget" "equals" "main" "setUp" "onCreate" "toString" "run" "hashCode" "init" "execute" "get" "close" "start" "add" "write" "create" "tearDown" "clear" "read" "reset" "update")
mMethods=("nonTarget" "equals" "main" "setUp" "onCreate" "toString" "run" "hashCode" "init" "execute" "get" "close")

for jTar in "${mMethods[@]}"; do
    echo "${jTar}/${jType}"
    inputPath=${mDataRoot}/${jTar}/${jType}
    outputPath="../data/handcrafted"/${jType}/t${mN}/"count"
    java -jar target/jar/JavaHFE.jar ${inputPath} ${outputPath} false
done
