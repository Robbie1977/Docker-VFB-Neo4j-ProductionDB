FROM virtualflybrain/docker-vfb-neo4j:2.3-enterprise 

MAINTAINER Robert Court "rcourt@ed.ac.uk"

VOLUME /data

RUN sed -i 's|=data\/graph\.db|=\/data\/neo4j|' ${NEOSERCONF} && \
chmod -R 777 /data && \
