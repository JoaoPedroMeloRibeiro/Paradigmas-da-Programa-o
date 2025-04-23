// Classe base Animal
class Animal {
  constructor(nome, idade, especie) {
    this.nome = nome;
    this.idade = idade;
    this.especie = especie;
  }

  printInfo() {
    console.log(`Nome: ${this.nome}, Idade: ${this.idade}, Espécie: ${this.especie}`);
  }
}

// Classe Cachorro que herda de Animal
class Cachorro extends Animal {
  constructor(nome, idade, especie, raca) {
    super(nome, idade, especie);
    this.raca = raca; // Usando atributo público para garantir compatibilidade
  }

  printInfo() {
    super.printInfo();
    console.log(`Raça: ${this.raca}`);
  }
}

// Classe Gato que herda de Animal
class Gato extends Animal {
  constructor(nome, idade, especie, cores) {
    super(nome, idade, especie);
    this.cores = cores;
  }

  printInfo() {
    super.printInfo();
    console.log(`Cores: ${this.cores.join(', ')}`);
  }
}

// Criando os objetos
const animal1 = new Animal("Leão", 5, "Felino");
const cachorro1 = new Cachorro("Rex", 3, "Canino", "Labrador");
const gato1 = new Gato("Mimi", 2, "Felino", ["preto", "branco"]);

// Chamando os métodos printInfo
console.log("Animal:");
animal1.printInfo();

console.log("\nCachorro:");
cachorro1.printInfo();

console.log("\nGato:");
gato1.printInfo();
