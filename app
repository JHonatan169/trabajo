<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Juego: Adivina el Número</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        input, button {
            padding: 10px;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <h1>¡Adivina el Número!</h1>
    <p>Estoy pensando en un número entre 1 y 100. ¿Puedes adivinarlo?</p>

    <input type="number" id="guess" placeholder="Tu número">
    <button onclick="checkGuess()">Adivinar</button>

    <p id="result"></p>
    <p id="attempts"></p>

    <script>
        let secretNumber = Math.floor(Math.random() * 100) + 1;
        let tries = 0;

        function checkGuess() {
            let guess = Number(document.getElementById("guess").value);
            tries++;
            let message = "";
            if (guess === secretNumber) {
                message = `¡Felicidades! Adivinaste el número ${secretNumber} en ${tries} intentos.`;
            } else if (guess < secretNumber) {
                message = "Demasiado bajo, intenta de nuevo.";
            } else if (guess > secretNumber) {
                message = "Demasiado alto, intenta de nuevo.";
            }
            document.getElementById("result").textContent = message;
            document.getElementById("attempts").textContent = `Intentos: ${tries}`;
        }
    </script>
</body>
</html>
