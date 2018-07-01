#!/bin/bash
# papoGen DEMO

echo "papoGen DEMO"
read cmd

# Install papoGen from npm
if [ "$cmd" = "install"]; then
    npm remove papogen -g
    npm install papogen -g
fi


# Generate webpage by papoGeb
if [ "$cmd" = "gen-json"]; then 
    papogen -s src/papogen/json -o out/papogen -g json -m papogen
fi

papogen -s src/json -o out/json -g json -m doc

# 產生 document 版型 - doc
$ papogen -s src/json -o out/json -m doc
# 產生 resume 版型 - resume
$ papogen -s src/json -o out/json -m resume