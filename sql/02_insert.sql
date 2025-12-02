INSERT INTO Usuario (login, senha, tipo, status)
VALUES
('admin', '123456', 'Administrador', 'Ativo'),
('operador1', 'senha1', 'Operador', 'Ativo'),
('supervisor', 'senha2', 'Supervisor', 'Ativo');
INSERT INTO Pessoa (nome, documento, telefone)
VALUES  
INSERT INTO Pessoa (nome, documento, telefone)
VALUES
('João Silva', '12345678900', '11999990000'),
('Ana Souza', '98765432100', '11988880000'),
('Carlos Mendes', '45698712300', '11977770000');
INSERT INTO Pessoa (nome, documento, telefone)
VALUES
('João Silva', '12345678900', '11999990000'),
('Ana Souza', '98765432100', '11988880000'),
('Carlos Mendes', '45698712300', '11977770000');
INSERT INTO Equipe (nome, setor)
INSERT INTO Equipe (nome, setor)
VALUES
('Equipe Alfa', 'Norte'),
('Equipe Bravo', 'Leste');
INSERT INTO Veiculo (placa, modelo, tipo)
VALUES
('ABC1234', 'Hilux', 'Caminhonete'),
('DEF5678', 'Duster', 'SUV');
INSERT INTO Ocorrencia (protocolo, data_hora, local, descricao, id_usuario, id_equipe)
VALUES
('20250001', '2025-01-10 14:30:00', 'Rua A, 150', 'Furto em residência', 1, 1),
('20250002', '2025-01-11 09:15:00', 'Av. Central, 2000', 'Apoio a acidente de trânsito', 2, 2);
INSERT INTO Relatorio (id_ocorrencia, detalhes, data_criacao)
VALUES
(1, 'Equipe realizou verificação no local. Indícios coletados.', '2025-01-10'),
(2, 'Apoio prestado. Vítima encaminhada ao hospital.', '2025-01-11');
INSERT INTO Ocorrencia_Pessoa VALUES
(1, 1),
(1, 2),
(2, 3);
INSERT INTO Ocorrencia_Veiculo VALUES
(2, 1),
(2, 2);
