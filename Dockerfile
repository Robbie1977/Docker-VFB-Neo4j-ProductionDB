FROM virtualflybrain/docker-vfb-neo4j:enterprise 

MAINTAINER Robert Court "rcourt@ed.ac.uk"

VOLUME /data

RUN sed -i 's|=data\/graph\.db|=\/data\/neo4j|' ${NEOSERCONF} && \
sed -i 's|#dbms.directories.data=data|dbms.directories.data=/data|' ${NEOSERCONF} && \
sed -i 's|#dbms.active_database=graph\.db|dbms.active_database=neo4j|' ${NEOSERCONF} && \
chmod -R 777 /data
