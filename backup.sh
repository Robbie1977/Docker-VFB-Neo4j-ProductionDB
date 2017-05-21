#!/bin/bash

/var/lib/neo4j/bin/neo4j-backup --from=localhost -to /backup --name=graph.db-backup --fallback-to-full=true --check-consistency=true
