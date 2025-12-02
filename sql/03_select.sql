-- 1. Buscar todas as ocorrências com usuário e equipe
SELECT o.id_ocorrencia, o.protocolo, u.login, e.nome AS equipe
FROM Ocorrencia o
JOIN Usuario u ON o.id_usuario = u.id_usuario
JOIN Equipe e ON o.id_equipe = e.id_equipe;

-- 2. Pessoas envolvidas na ocorrência 1
SELECT p.nome, p.documento
FROM Ocorrencia_Pessoa op
JOIN Pessoa p ON op.id_pessoa = p.id_pessoa
WHERE op.id_ocorrencia = 1;

-- 3. Ocorrências ordenadas por data
SELECT protocolo, data_hora, local
FROM Ocorrencia
ORDER BY data_hora DESC
LIMIT 5;

-- 4. Relatórios com detalhes
SELECT r.id_relatorio, r.detalhes, o.protocolo
FROM Relatorio r
JOIN Ocorrencia o ON r.id_ocorrencia = o.id_ocorrencia;

-- 5. Veículos usados por ocorrência
SELECT o.id_ocorrencia, v.placa, v.modelo
FROM Ocorrencia_Veiculo ov
JOIN Veiculo v ON ov.id_veiculo = v.id_veiculo
JOIN Ocorrencia o ON ov.id_ocorrencia = o.id_ocorrencia;
