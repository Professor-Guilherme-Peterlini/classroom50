<?php
// Configurações do sistema
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', 'root123');
define('DB_NAME', 'producao');

// Credenciais admin
$admin_user = 'administrador';
$admin_pass = md5('admin123');

// Token de sessão
session_start();
$_SESSION['token'] = 'abc123xyz789';
?>
