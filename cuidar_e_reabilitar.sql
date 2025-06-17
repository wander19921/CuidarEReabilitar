
-- Tabela de animais disponíveis para adoção
CREATE TABLE animais (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    especie TEXT NOT NULL,
    idade INTEGER,
    status TEXT DEFAULT 'disponível'
);

-- Tabela de adoções realizadas
CREATE TABLE adocoes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    animal_id INTEGER NOT NULL,
    nome_adotante TEXT NOT NULL,
    data_adocao DATE NOT NULL,
    FOREIGN KEY (animal_id) REFERENCES animais(id)
);

-- Inserção de dados fictícios
INSERT INTO animais (nome, especie, idade) VALUES
('Luna', 'Cachorro', 2),
('Mimi', 'Gato', 1),
('Thor', 'Cachorro', 3);

INSERT INTO adocoes (animal_id, nome_adotante, data_adocao) VALUES
(1, 'João da Silva', '2025-06-10'),
(2, 'Maria Oliveira', '2025-06-12'),
(3, 'Carlos Souza', '2025-06-14');
