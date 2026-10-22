# Site Educacional - Arquivos Expostos

⚠️ **ATENÇÃO**: Este site contém vulnerabilidades **PROPOSITAIS** para fins educacionais. Todos os dados (senhas, chaves, CPFs) são fictícios.

## 🎯 Objetivo
Demonstrar como arquivos sensíveis podem ser expostos em servidores mal configurados e como usar `wget` para auditoria ética.

## 🚀 Como Usar

### Opção 1: Servidor local
```bash
cd site-aula-wget
python3 -m http.server 8000
```
Acesse `http://localhost:8000` e siga os exercícios em `EXERCICIOS.md`.

### Opção 2: GitHub Pages
Ative em **Settings → Pages → Source: main**. O site ficará disponível em `https://professor-guilherme-peterlini.github.io/classroom50/site-aula-wget/`. O arquivo `.nojekyll` garante que arquivos ocultos (como `.env`) sejam servidos.

## 📁 Arquivos Expostos

| Arquivo | Descrição | Criticidade |
|---------|-----------|-------------|
| `.env` | Credenciais de banco e APIs | 🔴 CRÍTICO |
| `config.php` | Configurações do sistema | 🔴 CRÍTICO |
| `backup/database.sql` | Dump do banco de dados | 🔴 CRÍTICO |
| `admin/dashboard.html` | Painel administrativo | 🟠 ALTO |
| `old/` | Versões antigas do site | 🟡 MÉDIO |
| `exemplos/git-config-exemplo.txt` | Simula .git/config exposto | 🟡 MÉDIO |

## 🛡️ Como Corrigir
Veja os exemplos em `.htaccess` (Apache) e `exemplos/nginx.conf` (Nginx).

## ⚖️ Aviso Legal
Este material é para **uso educacional apenas**. Nunca use estas técnicas em sistemas sem autorização explícita.

## 📖 Licença
MIT License - Uso livre para fins educacionais.
