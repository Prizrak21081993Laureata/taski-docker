#!/bin/bash
echo "=== Проверка Docker Hub логина ==="
echo "Логин: prizrak1993laureata"
echo -n "Токен (первые 10 символов): "
if [ -n "$DOCKER_TOKEN" ]; then
    echo "${DOCKER_TOKEN:0:10}..."
else
    echo "Не установлен"
fi

echo ""
echo "Попытка логина..."
if [ -n "$DOCKER_TOKEN" ]; then
    echo "$DOCKER_TOKEN" | docker login -u prizrak1993laureata --password-stdin 2>&1
else
    echo "ERROR: Установите DOCKER_TOKEN"
fi
