#include <iostream>
#include <string>
using namespace std;

class Pessoa {
protected:
    string nome;
    int idade;
public:
    Pessoa(string n, int i) : nome(n), idade(i) {}

    void imprimirNome() {
        cout << "O nome é: " << nome << endl;
    }

    virtual void idadeInfo() { // Método virtual para permitir polimorfismo
        cout << "Idade: " << idade << " anos." << endl;
    }
};

class Professor : public Pessoa {
public:
    Professor(string n, int i) : Pessoa(n, i) {}

    void idadeInfo() override { // Sobrescrevendo método da classe base
        cout << "O professor tem " << idade << " anos." << endl;
    }
};

class Aluno : public Pessoa {
private:
    string matricula;
public:
    Aluno(string n, int i, string m) : Pessoa(n, i), matricula(m) {}

    void idadeInfo() override { // Sobrescrevendo método da classe base
        cout << "O aluno tem " << idade << " anos." << endl;
    }

    void imprimirMatricula() {
        cout << "Matrícula: " << matricula << endl;
    }
};

int main() {
    Pessoa pessoa("Carlos", 40);
    Professor professor("Mariana", 35);
    Aluno aluno("Lucas", 20, "A12345");

    pessoa.imprimirNome();
    pessoa.idadeInfo();
    cout << endl;

    professor.imprimirNome();
    professor.idadeInfo();
    cout << endl;

    aluno.imprimirNome();
    aluno.idadeInfo();
    aluno.imprimirMatricula();

    return 0;
}
