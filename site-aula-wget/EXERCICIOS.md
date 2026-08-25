# Exercícios Práticos com wget

## Nível 1: Descoberta Básica
```bash
# Baixar página inicial
wget http://localhost:8000

# Baixar site completo (recursivo)
wget -r http://localhost:8000

# Baixar respeitando robots.txt
wget -r -p http://localhost:8000
```

## Nível 2: Ignorar robots.txt
```bash
# Baixar TUDO, ignorando robots.txt
wget -r -e robots=off http://localhost:8000

# Baixar com links convertidos para navegação offline
wget -r -k -e robots=off http://localhost:8000
```

## Nível 3: Buscar Arquivos Sensíveis
```bash
wget http://localhost:8000/.env
wget http://localhost:8000/config.php
wget http://localhost:8000/backup/database.sql
wget http://localhost:8000/admin/dashboard.html
```

## Nível 4: Descoberta Automatizada (Wordlist)
```bash
chmod +x descobrir.sh
./descobrir.sh http://localhost:8000
```

## Nível 5: Análise de Respostas HTTP
```bash
# Ver headers HTTP de um arquivo
wget --server-response --spider http://localhost:8000/.env

# Baixar com log detalhado
wget -d http://localhost:8000/config.php 2>&1 | tee wget_debug.log
```

## Desafio Final: "Auditoria Ética"
1. Use `wget -r` para baixar o site
2. Analise o `robots.txt` — o que ele revela?
3. Use a wordlist para descobrir arquivos ocultos
4. Documente cada arquivo encontrado: nome, URL completa, tipo de informação exposta e nível de criticidade (baixo/médio/alto/crítico)
5. Entregue um relatório em Markdown com a lista de arquivos, prints dos comandos e recomendações de correção
