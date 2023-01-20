#!/bin/sh

set -o errexit
set -o nounset
echo $DATABASE_URL
wait-for-db --mode postgres --connection-string $DATABASE_URL --timeout 60 --sql-query "select 1;"

exec "$@"
