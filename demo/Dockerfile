FROM cryptdb:latest

ADD . /cryptdb

RUN chmod +x /cryptdb/start.sh

ENTRYPOINT ["/bin/bash", "-c", "/cryptdb/start.sh"]