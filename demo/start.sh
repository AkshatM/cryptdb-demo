#!/bin/bash

export EDBDIR=/cryptdb
export CRYPTDB_PROXY_DEBUG=true
mysqld &
/cryptdb/bins/proxy-bin/bin/mysql-proxy         \
     --plugins=proxy --event-threads=4             \
     --max-open-files=1024                         \
     --proxy-lua-script=/cryptdb/mysqlproxy/wrapper.lua \
     --proxy-address=127.0.0.1:3307                \
     --proxy-backend-addresses=localhost:3306 &

connect() {
    mysql -u root -h 127.0.0.1 -P 3307 <${1}
}


run() {

    export CRYPTDB_MODE=single

    connect /cryptdb/database.sql

    echo "We shall start with two tables: 'msgs' and 'is_public'"
    read -r _
    connect /cryptdb/init.sql

    echo "Consider the following aggregate queries:"
    cat /cryptdb/aggregate.sql
    echo -e "\n\nWhich of these will trigger an adjusting of the encryption algorithm?"
    read -r _
    connect /cryptdb/aggregate.sql

    echo -e "\n\nHow about some equalities and joining?"
    cat /cryptdb/equalities.sql
    read -r _
    connect /cryptdb/equalities.sql

    echo -e "\n\nHow about updates?"
    cat /cryptdb/update.sql
    read -r _
    connect /cryptdb/update.sql

    echo -e "\n\nSome interesting queries that don't work:"
    cat /cryptdb/dontwork.sql
}

sleep 5
run