CREATE DATABASE nfc_pedidos;
USE nfc_pedidos;

CREATE TABLE Categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria_id INT,
    imagem_url VARCHAR(255),
    FOREIGN KEY (categoria_id) REFERENCES Categorias(id) ON DELETE SET NULL
);

CREATE TABLE Mesas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    status VARCHAR(20) NOT NULL DEFAULT 'livre'
);

CREATE TABLE Pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mesa_id INT,
    data_hora DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) NOT NULL DEFAULT 'aberto',
    FOREIGN KEY (mesa_id) REFERENCES Mesas(id) ON DELETE SET NULL
);

CREATE TABLE Itens_pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    pedido_id INT,
    quantidade INT NOT NULL DEFAULT 1,
    preco_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES Produtos(id) ON DELETE SET NULL,
    FOREIGN KEY (pedido_id) REFERENCES Pedidos(id) ON DELETE CASCADE
);

INSERT INTO Categorias (nome) VALUES
('Entradas'),
('Hambúrgueres Tradicionais'),
('Hambúrgueres Especiais'),
('Vegetariano'),
('Bebidas'),
('Pizzas'),
('Pizzas Doces'),
('Sobremesas');

INSERT INTO Mesas (status) VALUES
('livre'),
('livre'),
('livre'),
('livre'),
('livre'),
('livre'),
('livre'),
('livre'),
('livre'),
('livre');

INSERT INTO Produtos (nome, preco, categoria_id, imagem_url) VALUES
('Coca-Cola', 10.00, 6, '/imagens/coca.png'),
('Água', 5.00, 6, '/imagens/agua.png'),
('Batata Frita', 15.00, 1, '/imagens/batata.png');