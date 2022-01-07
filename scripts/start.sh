#!/bin/sh
set -x
set -e

/app/scripts/wait-for-it.sh ${DATABASE_HOST} -- echo "database is up"
npx prisma migrate deploy
yarn start
