#!/bin/sh
echo ">>> Compiling into binary file..."
CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o  ./ossutil -v ./ossutil.go
if [ $? -ne 0 ]; then
    echo "->>> Compiling Failed."
    exit -1
fi
echo ">>> Compiling Success."