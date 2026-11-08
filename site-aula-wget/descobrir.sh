#!/bin/bash
# Script educacional de descoberta de arquivos expostos
# Uso: ./descobrir.sh http://localhost:8000

URL="${1:-http://localhost:8000}"

echo "Iniciando descoberta em: $URL"
echo ""

while read path; do
    echo -n "Testando: /$path ... "

    # Verifica se existe (sem baixar)
    if wget --spider "$URL/$path" 2>/dev/null; then
        echo "✓ ENCONTRADO!"
        echo "$URL/$path" >> encontrados.txt
    else
        echo "✗"
    fi
done < wordlist.txt

echo ""
echo "Arquivos encontrados salvos em: encontrados.txt"
