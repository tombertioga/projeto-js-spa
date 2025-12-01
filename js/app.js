import { router } from "./router.js";
import { validarFormulario } from "./validators.js";
import { salvarLocal } from "./storage.js";

window.addEventListener("hashchange", router);
window.addEventListener("load", () => {
    router();
    initFormListener();
});

function initFormListener() {
    document.body.addEventListener("submit", (e) => {
        if (e.target.id === "formCadastro") {
            e.preventDefault();

            const dados = {
                nome: document.getElementById("nome").value,
                email: document.getElementById("email").value,
                idade: document.getElementById("idade").value
            };

            const erros = validarFormulario(dados);
            const divErros = document.getElementById("erros");

            if (erros.length > 0) {
                divErros.innerHTML = erros.join("<br>");
            } else {
                divErros.innerHTML = "";
                salvarLocal("usuario", dados);
                alert("Dados salvos com sucesso!");
            }
        }
    });
}
