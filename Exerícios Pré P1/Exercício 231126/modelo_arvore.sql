
CREATE TABLE no_arvore (
    id INTEGER PRIMARY KEY,
    pai_id INTEGER,
    tipo TEXT NOT NULL,
    nome TEXT NOT NULL,
    matricula TEXT UNIQUE,
    FOREIGN KEY (pai_id) REFERENCES no_arvore(id)
);

INSERT INTO no_arvore (id, pai_id, tipo, nome, matricula) VALUES
(1, NULL, 'raiz', 'Alunos IPRJ UERJ', NULL),

(2, 1, 'cidade', 'Nova Friburgo', NULL),
(3, 1, 'cidade', 'Teresópolis', NULL),
(4, 1, 'cidade', 'Petrópolis', NULL),
(5, 1, 'cidade', 'Niterói', NULL),

(6, 2, 'bairro', 'Centro', NULL),
(7, 2, 'bairro', 'Olaria', NULL),
(8, 3, 'bairro', 'Alto', NULL),
(9, 3, 'bairro', 'Várzea', NULL),
(10, 4, 'bairro', 'Centro', NULL),
(11, 4, 'bairro', 'Bingen', NULL),
(12, 5, 'bairro', 'Icaraí', NULL),
(13, 5, 'bairro', 'Santa Rosa', NULL),

(14, 6, 'aluno', 'Mariana Duarte', '202110048317'),
(15, 6, 'aluno', 'Caio Mendes', '202110048362'),
(16, 7, 'aluno', 'Helena Barbosa', '202110048349'),
(17, 7, 'aluno', 'Rafael Lopes', '202110048383'),
(18, 8, 'aluno', 'Beatriz Ramos', '202110048326'),
(19, 8, 'aluno', 'Lucas Farias', '202110048374'),
(20, 9, 'aluno', 'Isabela Campos', '202110048305'),
(21, 9, 'aluno', 'Henrique Nunes', '202110048396'),
(22, 10, 'aluno', 'Camila Peixoto', '202110048341'),
(23, 10, 'aluno', 'Gabriel Rocha', '202110048358'),
(24, 11, 'aluno', 'Letícia Tavares', '202110048331'),
(25, 11, 'aluno', 'André Teixeira', '202110048387'),
(26, 12, 'aluno', 'Sofia Monteiro', '202110048369'),
(27, 12, 'aluno', 'Bruno Azevedo', '202110048312'),
(28, 13, 'aluno', 'Júlia Cardoso', '202110048393'),
(29, 13, 'aluno', 'Felipe Almeida', '202110048354');
