DROP TABLE IF EXISTS SERVENTIA,
CLIENTES,
SERVIÇOS,
SERVIDOR,
MAQUINAS,
FUNCIONARIOS,
RECEPCAO,
PESSOAS;

CREATE TABLE SERVENTIA(
    nomeServentia VARCHAR(20) NOT NULL PRIMARY KEY,
    cidade VARCHAR(20) NOT NULL,
    titular VARCHAR(20) NOT NULL
);


    CREATE TABLE FUNCIONARIOS(
        idFuncionarios INTEGER NOT NULL PRIMARY KEY,
        cargo VARCHAR(20) NOT NULL,
        setor VARCHAR(20) NOT NULL,
    );

CREATE TABLE SERVIÇOS(
    idServiços INTEGER NOT NULL PRIMARY KEY,
    cadastroPessoa VARCHAR(20),
    tipoServiço VARCHAR(20),
    FOREIGN KEY (cadastroPessoa) REFERENCES PESSOA(cpf)
);


    CREATE TABLE PESSOAS(
        cpf VARCHAR(20) NOT NULL PRIMARY KEY,
        nome VARCHAR(20) NOT NULL,
        telefone VARCHAR(20) NOT NULL
    );

CREATE TABLE MAQUINAS(
    idmaquina INTEGER NOT NULL PRIMARY KEY,
    usuarioMaquina VARCHAR(20) NOT NULL,
    numeroMac serial NOT NULL
);

INSERT INTO
    MAQUINAS (idmaquina, usuarioMaquina, numeroMac)
VALUES
    (3232,'Julio',1),
    (4242,'Silva',2),
    (4545,'Carlos',3),
    (3223,'Marcos',4),
    (2233,'João',5),
    (3332,'Patrike',6),
    (3423,'Hugo',7),
    (3432,'Samuel',8),
    (3292,'Kerles',9),
    (2322,'felipe',10),
    
    CREATE TABLE RECEPCAO(
        idAberturaderecepcao Serial NOT NULL PRIMARY KEY,
        horarioAtendimento VARCHAR(20) NOT NULL,
        atendente INTEGER NOT NULL,
        FOREIGN KEY (atendente) REFERENCES FUNCIONARIOS(idfuncionario)
    );

INSERT INTO
    RECEPCAO (
        idAberturaderecepcao,
        horarioAtendimento,
        atendente
    )
    CREATE TABLE CLIENTES(
        nomeCliente VARCHAR(20) NOT NULL PRIMARY KEY,
        tipoPessoa VARCHAR(20) NOT NULL,
        dadosCliente VARCHAR(20) NOT NULL
    );

INSERT INTO
    CLIENTES (nomeCliente, tipoPessoa, dadosCliente)
VALUES
    ('Igor', 'Fisica', '156.142.200-20'),
    ('Felipe', 'Fisica', '476.425.970-29'),
    ('Kerles', 'Fisica', '525.558.030-92'),
    ('Julio', 'Fisica', '399.329.680-05'),
    ('Cesar', 'Fisica', '103.101.090-43'),
    ('Lucilene', 'Fisica', '387.835.060-04'),
    ('Wanderley', 'Fisica', '354.359.490-76'),
    ('Luiza', 'Fisica', '388.297.600-48'),
    ('Carlos', 'Fisica', '279.659.500-57'),
    ('Silveira', 'Fisica', '729.508.120-82');

INSERT INTO
    FUNCIONARIOS (idFuncionarios, cargo, setor)
VALUES
    (001, 'Auxiliar de cartorio', 'gestão'),
    (002, 'Auxiliar de cartorio', 'gestão'),
    (003, 'Auxiliar de cartorio', 'gestão'),
    (004, 'Auxiliar de cartorio', 'gestão'),
    (005, 'Auxiliar de cartorio', 'gestão'),
    (006, 'Recepeção', 'gestão'),
    (007, 'Recepeção', 'gestão'),
    (008, 'Recepeção', 'gestão'),
    (009, 'Recepeção', 'gestão'),
    (100, 'Escrivão', 'gestão');

INSERT INTO
    PESSOAS (cpf, nome, telefone)
VALUES
    ('15614220020', 'Igor', '4449991732241'),
    ('47642597029', 'Silvia', '4449991732241'),
    ('52555803092', 'Rosa', '4449991732241'),
    ('39932968005', 'Guilherme', '4449991732241'),
    ('10310109043', 'Silvio', '4449991732241'),
    ('38783506004', 'Sebatiao', '4449991732241'),
    ('35435949076', 'Matias', '4449991732241'),
    ('38829760048', 'Vitor', '4449991732241'),
    ('27965950057', 'Joao', '4449991732241'),
    ('72950812082', 'Jose', '4449991732241');

    INSERT INTO
    SERVIÇOS (idServiços, cadastroPessoa, tipoServiço)
VALUES
    ('8899', '15614220020', 'Certidão'),
    ('8900', '47642597029', 'Certidão'),
    ('8901', '47642597029', 'Certidão'),
    ('8902', '72950812082', 'Certidão'),
    ('8903', '39932968005', 'Certidão'),
    ('8904', '39932968005', 'Certidão'),
    ('8905', '10310109043', 'Certidão'),
    ('8906', '10310109043', 'Certidão'),
    ('8907', '27965950057', 'Certidão'),
    ('8908', '27965950057', 'Certidão');

    INSERT INTO
    SERVENTIA (nomeServentia, cidade, titular)
VALUES
    ('1 ri curitiba', 'Curitiba', 'Mariana kosin'),
    ('2 ri curitiba', 'Curitiba', 'Julia Mitko'),
    ('3 ri curitiba', 'Curitiba', 'Aias Jose'),
    ('4 ri curitiba', 'Curitiba', 'Carlos Kloster'),
    ('5 ri curitiba', 'Curitiba', 'Jaslaine Kloster'),
    ('1 ri Campo Mourão', 'Campo Mourão', 'Wanderley João'),
    ('2 ri Campo Mourão', 'Campo Mourão', 'André Silva'),
    ('1 ri Toledo', 'Toledo', 'João Cristian'),
    ('1 ri sarandi', 'sarandi', 'Mario Gotze'),
    ('1 ri maringa', 'maringa', 'Frank Riberi'),
    ('2 ri maringa', 'maringa', 'Iker Cassillas');

    INSERT INTO
    MAQUINAS (idmaquina, usuarioMaquina, numeroMac)
VALUES
    (3232,'Julio',1),
    (4242,'Silva',2),
    (4545,'Carlos',3),
    (3223,'Marcos',4),
    (2233,'João',5),
    (3332,'Patrike',6),
    (3423,'Hugo',7),
    (3432,'Samuel',8),
    (3292,'Kerles',9),
    (2322,'felipe',10),