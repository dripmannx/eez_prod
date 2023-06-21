#!/usr/bin/env bash

export HOSTNAME=$(hostname)
export IP_ADDRESS=172.16.117.61
export GITEA_ADMIN_USER="Luis"
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${GITEA_ADMIN_USER},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
export DRONE_GITEA_CLIENT_ID="d8d7ea03-e0f6-466b-9d12-2a10f817f7d2"
export DRONE_GITEA_CLIENT_SECRET="jWYwM-DR9hkQ9y07SVjfqh3vPKgjVjkO5UyU9F2v1Ao="

docker-compose up -d

echo ""
echo "Gitea: http://${IP_ADDRESS}:3000/"
echo "Drone: http://${IP_ADDRESS}:3001/"
echo "Selenium Hub: http://${IP_ADDRESS}:4444/"
echo "Docker Registry: http://${IP_ADDRESS}:5000/"
