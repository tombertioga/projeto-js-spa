export function validarFormulario(dados) {
    const erros = [];

    if (!dados.nome || dados.nome.length < 3) {
        erros.push("Nome deve ter ao menos 3 caracteres.");
    }

    if (!dados.email || !dados.email.includes("@")) {
        erros.push("E-mail inválido.");
    }

    if (!dados.idade || dados.idade < 18) {
        erros.push("Idade mínima é 18 anos.");
    }

    return erros;
}
