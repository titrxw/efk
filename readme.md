docker network create efk

docker run -d --name elasticsearch --net efk  -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" -e ES_JAVA_POTS="-Xms512m -Xmx512m" elasticsearch

docker run -d --name kibana --net efk -p 5601:5601 kibana

docker run -d --name fluentd  -p 24224:24224 -p 24224:24224/udp  -v /Users/rxwyun/Develop/php/w7-rangine-empty/runtime/logs:/fluentd/log   fluentd_es