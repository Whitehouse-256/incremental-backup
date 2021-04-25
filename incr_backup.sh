#!/bin/bash

if [ $# != 4 ]; then
    echo "Usage: $0 backup_dir meta_file tar_dir projectname"
    exit
fi

if [[ ! -d "$1" ]]; then
    echo "$1 is not a directory!"
    exit
fi

if [[ ! -d "$3" ]]; then
    echo "Creating $3..."
    mkdir -p $3
fi

time=$(date +%Y-%m-%d_%H-%M-%S)

tar -czg $2 -f $3/$4-${time}.tar.gz $1
echo "Created file: $3/$4-${time}.tar.gz"
