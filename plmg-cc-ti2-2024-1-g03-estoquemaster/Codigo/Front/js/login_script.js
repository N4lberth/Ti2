document
  .getElementById("loginForm")
  .addEventListener("submit", function (event) {
    event.preventDefault(); // Evitar o comportamento padrão de envio do formulário
    const username = document.getElementById("username").value;
    const password = document.getElementById("password").value;

    // Simulando a autenticação - substituir esta parte pela lógica real de autenticação
    if (username === "admin" && password === "admin") {
      alert("Login bem sucedido! Redirecionando para a página principal...");
      // Redirecionar para a página principal
      window.location.href = "../index.html";
    } else {
      alert("Usuário ou senha incorretos. Por favor, tente novamente.");
    }
  });
