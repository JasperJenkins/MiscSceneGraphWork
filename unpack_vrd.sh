#!/bin/sh
file="./data/sg_dataset.zip"
if [ -f "$file" ]
then
    mkdir ./data/train
    mkdir ./data/test
    unzip -d ./data $file
    mv ./data/sg_dataset/sg_train_images/* ./data/train
    mv ./data/sg_dataset/sg_test_images/* ./data/test
    mv ./data/sg_dataset/sg_train_annotations.json ./data
    mv ./data/sg_dataset/sg_test_annotations.json ./data
    rmdir ./data/sg_dataset/sg_train_images
    rmdir ./data/sg_dataset/sg_test_images
    rmdir ./data/sg_dataset
else
    echo "$0: sg_dataset.zip not found in data folder. sg_dataset.zip is required in ./data"
fi