export const templates = {
    home: `
        <h1>Bem-vindo!</h1>
        <p>Esta é uma SPA construída totalmente em JavaScript puro.</p>
    `,
    sobre: `
        <h1>Sobre o Projeto</h1>
        <p>Este projeto demonstra DOM, SPA, módulos e validação.</p>
    `,
    formulario: `
        <h1>Formulário de Cadastro</h1>

        <form id="formCadastro">
            <label>Nome:</label>
            <input type="text" id="nome">
            
            <label>E-mail:</label>
            <input type="email" id="email">
            
            <label>Idade:</label>
            <input type="number" id="idade">

            <button type="submit">Enviar</button>
        </form>

        <div id="erros" style="color:red; margin-top:10px;"></div>
    `
};
