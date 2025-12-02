-- 1. Remover vínculo pessoa-ocorrencia
DELETE FROM Ocorrencia_Pessoa
WHERE id_ocorrencia = 1 AND id_pessoa = 2;

-- 2. Excluir um veículo
DELETE FROM Veiculo
WHERE id_veiculo = 2;

-- 3. Remover uma pessoa
DELETE FROM Pessoa
WHERE id_pessoa = 3;
