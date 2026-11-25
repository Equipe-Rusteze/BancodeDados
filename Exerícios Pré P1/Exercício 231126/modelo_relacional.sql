
CREATE TABLE cidade (
    id_cidade INTEGER PRIMARY KEY,
    nome TEXT NOT NULL
);

CREATE TABLE bairro (
    id_bairro INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    id_cidade INTEGER NOT NULL,
    FOREIGN KEY (id_cidade) REFERENCES cidade(id_cidade)s
);

CREATE TABLE aluno (
    matricula TEXT PRIMARY KEY,
    nome TEXT NOT NULL,
    sobrenome TEXT NOT NULL,
    id_bairro INTEGER NOT NULL,
    FOREIGN KEY (id_bairro) REFERENCES bairro(id_bairro)
);

INSERT INTO cidade (id_cidade, nome) VALUES
(1, 'Nova Friburgo'),
(2, 'Teresópolis'),
(3, 'Petrópolis'),
(4, 'Niterói');

INSERT INTO bairro (id_bairro, nome, id_cidade) VALUES
(1, 'Centro', 1),
(2, 'Olaria', 1),
(3, 'Alto', 2),
(4, 'Várzea', 2),
(5, 'Centro', 3),
(6, 'Bingen', 3),
(7, 'Icaraí', 4),
(8, 'Santa Rosa', 4);

INSERT INTO aluno (matricula, nome, sobrenome, id_bairro) VALUES
('202110048317', 'Mariana', 'Duarte', 1),
('202110048362', 'Caio', 'Mendes', 1),
('202110048349', 'Helena', 'Barbosa', 2),
('202110048383', 'Rafael', 'Lopes', 2),
('202110048326', 'Beatriz', 'Ramos', 3),
('202110048374', 'Lucas', 'Farias', 3),
('202110048305', 'Isabela', 'Campos', 4),
('202110048396', 'Henrique', 'Nunes', 4),
('202110048341', 'Camila', 'Peixoto', 5),
('202110048358', 'Gabriel', 'Rocha', 5),
('202110048331', 'Letícia', 'Tavares', 6),
('202110048387', 'André', 'Teixeira', 6),
('202110048369', 'Sofia', 'Monteiro', 7),
('202110048312', 'Bruno', 'Azevedo', 7),
('202110048393', 'Júlia', 'Cardoso', 8),
('202110048354', 'Felipe', 'Almeida', 8);
