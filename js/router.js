import { templates } from "./templates.js";

export function router() {
    const hash = window.location.hash.replace("#", "");

    const app = document.getElementById("app");

    if (templates[hash]) {
        app.innerHTML = templates[hash];
    } else {
        app.innerHTML = templates.home; // padrão
    }
}
