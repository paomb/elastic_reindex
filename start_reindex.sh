#!/bin/bash
chmod +x es-reindex.sh
indices=$(curl --silent "http://[REMOTE_HOST:9200/_cat/indices/*?h=index")
for i in $indices
do 
./es-reindex.sh  [REMOTE_HOST:REMOTE_PORT] $i [LOCAL_HOST:LOCAL_PORT]
    echo "=== ==== === "
done
