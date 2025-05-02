using System;

class Cachorro
{
    public string Nome { get; set; }
    public int Idade { get; set; }

    public Cachorro(string nome, int idade)
    {
        Nome = nome;
        Idade = idade;
    }

    public void ShowNome()
    {
        Console.WriteLine($"O nome do cachorro é: {Nome}");
    }

    public virtual void ShowIdade()
    {
        Console.WriteLine($"A idade do cachorro é: {Idade} anos.");
    }
}

class CachorroGrande : Cachorro
{
    private string tamanho = "Grande";

    public CachorroGrande(string nome, int idade) : base(nome, idade) { }

    public override void ShowIdade()
    {
        Console.WriteLine($"{Nome} é um cachorro grande com {Idade} anos de idade.");
    }

    public void MostrarTamanho()
    {
        Console.WriteLine($"Tamanho: {tamanho}");
    }
}

class CachorroPequeno : Cachorro
{
    public CachorroPequeno(string nome, int idade) : base(nome, idade) { }

    public override void ShowIdade()
    {
        Console.WriteLine($"{Nome} é um cachorro pequeno com {Idade} anos de idade.");
    }
}

class Program
{
    static void MostrarInfos(Cachorro c)
    {
        c.ShowNome();
        c.ShowIdade();

        // Usar reflexão ou cast para exibir o tamanho do CachorroGrande
        if (c is CachorroGrande grande)
        {
            grande.MostrarTamanho();
        }

        Console.WriteLine();
    }

    static void Main(string[] args)
    {
        Cachorro cachorroBase = new Cachorro("Bob", 3);
        CachorroPequeno pequeno = new CachorroPequeno("Pingo", 2);
        CachorroGrande grande = new CachorroGrande("Thor", 5);

        MostrarInfos(cachorroBase);
        MostrarInfos(pequeno);
        MostrarInfos(grande);
    }
}
