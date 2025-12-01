export function salvarLocal(key, value) {
    localStorage.setItem(key, JSON.stringify(value));
}

export function carregarLocal(key) {
    return JSON.parse(localStorage.getItem(key));
}
