fn preenche_arr(arr: &mut [i32; 10], x: i32) {
    for i in 0..arr.len() {
        arr[i] = i as i32 * x;
    }
}

fn main() {
    let mut arr = [0; 10]; // Inicializa um array de 10 elementos com zero
    let number_cvt = 3; // Defina um valor para multiplicação
    
    preenche_arr(&mut arr, number_cvt);
    
    println!("{:?}", arr); // Exibe o array preenchido
}
