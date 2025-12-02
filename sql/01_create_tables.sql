CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    login VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    status VARCHAR(10) NOT NULL
);

CREATE TABLE Pessoa (
    id_pessoa INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(120) NOT NULL,
    documento VARCHAR(20) NOT NULL UNIQUE,
    telefone VARCHAR(20)
);

CREATE TABLE Equipe (
    id_equipe INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    setor VARCHAR(100)
);

CREATE TABLE Veiculo (
    id_veiculo INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(10) NOT NULL UNIQUE,
    modelo VARCHAR(50),
    tipo VARCHAR(30)
);

CREATE TABLE Ocorrencia (
    id_ocorrencia INT PRIMARY KEY AUTO_INCREMENT,
    protocolo VARCHAR(20) NOT NULL UNIQUE,
    data_hora DATETIME NOT NULL,
    local VARCHAR(200),
    descricao TEXT,
    id_usuario INT NOT NULL,
    id_equipe INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
    FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe)
);

CREATE TABLE Relatorio (
    id_relatorio INT PRIMARY KEY AUTO_INCREMENT,
    id_ocorrencia INT UNIQUE NOT NULL,
    detalhes TEXT,
    data_criacao DATE NOT NULL,
    FOREIGN KEY (id_ocorrencia) REFERENCES Ocorrencia(id_ocorrencia)
);

CREATE TABLE Ocorrencia_Pessoa (
    id_ocorrencia INT NOT NULL,
    id_pessoa INT NOT NULL,
    PRIMARY KEY (id_ocorrencia, id_pessoa),
    FOREIGN KEY (id_ocorrencia) REFERENCES Ocorrencia(id_ocorrencia),
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
);

CREATE TABLE Ocorrencia_Veiculo (
    id_ocorrencia INT NOT NULL,
    id_veiculo INT NOT NULL,
    PRIMARY KEY (id_ocorrencia, id_veiculo),
    FOREIGN KEY (id_ocorrencia) REFERENCES Ocorrencia(id_ocorrencia),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo)
);
CREATE TABLE Equipe_Membro (
    id_equipe INT NOT NULL,
    id_usuario INT NOT NULL,
    PRIMARY KEY (id_equipe, id_usuario),
    FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);  