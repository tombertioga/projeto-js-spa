-- 1. Atualizar telefone de uma pessoa
UPDATE Pessoa
SET telefone = '11912341234'
WHERE id_pessoa = 1;

-- 2. Alterar status do usuário
UPDATE Usuario
SET status = 'Inativo'
WHERE id_usuario = 3;

-- 3. Corrigir local da ocorrência
UPDATE Ocorrencia
SET local = 'Rua A, 180'
WHERE id_ocorrencia = 1;
