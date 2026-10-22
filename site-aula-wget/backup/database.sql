-- Backup gerado em 13/08/2024
-- Banco: empresaxyz_db

CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    senha VARCHAR(255),
    cpf VARCHAR(14)
);

INSERT INTO usuarios VALUES 
(1, 'João Silva', 'joao@email.com', '5f4dcc3b5aa765d61d8327deb882cf99', '123.456.789-00'),
(2, 'Maria Santos', 'maria@email.com', 'e10adc3949ba59abbe56e057f20f883e', '987.654.321-00'),
(3, 'Pedro Oliveira', 'pedro@email.com', '25d55ad283aa400af464c76d713c07ad', '456.789.123-00');

CREATE TABLE transacoes (
    id INT PRIMARY KEY,
    usuario_id INT,
    valor DECIMAL(10,2),
    data TIMESTAMP
);
