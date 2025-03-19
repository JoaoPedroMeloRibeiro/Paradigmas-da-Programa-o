use std::io;

fn main() {
    loop {
        println!("Digite dois números separados por espaço (ou 'sair' para encerrar):");

        let mut input = String::new();
        io::stdin().read_line(&mut input).expect("Falha ao ler entrada");

        let input = input.trim();

        // Verifica se o usuário quer sair
        if input.eq_ignore_ascii_case("sair") {
            println!("Encerrando o programa...");
            break;
        }

        // Divide a entrada em partes e tenta converter para números
        let mut numbers = input.split_whitespace()
            .map(|n| n.parse::<f64>());

        let num1 = match numbers.next() {
            Some(Ok(n)) => n,
            _ => {
                println!("Entrada inválida! Certifique-se de digitar dois números válidos.");
                continue;
            }
        };

        let num2 = match numbers.next() {
            Some(Ok(n)) => n,
            _ => {
                println!("Entrada inválida! Certifique-se de digitar dois números válidos.");
                continue;
            }
        };

        println!("Escolha a operação: + para soma, * para multiplicação:");

        let mut operation = String::new();
        io::stdin().read_line(&mut operation).expect("Falha ao ler entrada");

        let operation = operation.trim();

        let result = match operation {
            "+" => num1 + num2,
            "*" => num1 * num2,
            _ => {
                println!("Operação inválida! Escolha '+' para soma ou '*' para multiplicação.");
                continue;
            }
        };

        println!("O resultado da operação é: {}", result);
    }
}
