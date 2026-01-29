//
//  main.swift
//  Class
//
//  Created by Felipe iOS on 26/01/26.
//

import Foundation

// MARK: - Exercícios Classe

// Exercício 1: Conta Poupança
// Objetivo: Desenvolver uma classe chamada 'ContaPoupanca' para gerenciar os depósitos em uma conta poupança de banco.
//
// Descrição:
// Propriedades:
// - saldo (Double): O saldo atual na conta.
// Construtor:
// - Inicialize o saldo.
// Métodos:
// - depositar(valor: Double): Adiciona(+) o valor especificado ao saldo atual. (saldo = saldo + valor especificado)
// - consultarSaldo() -> Double: Retorna o saldo atual da conta.

//   Para usar este método, você deve criar uma instância da classe, chamar este método e armazenar o valor retornado em uma variável. Em seguida, você pode imprimir esse valor.
// print("Saldo atual: R$\(saldoAtual)")

class ContaPoupanca {
    var saldo:Double
    
    init(saldo: Double) {
        self.saldo = saldo
    }
    
    func despositar(valor:Double){
        saldo += valor
    }
    func consultarSaldo() -> Double {
        return saldo
    }
}

var contaFelipe: ContaPoupanca = ContaPoupanca(saldo: 1000.00)
print(contaFelipe.saldo)
contaFelipe.despositar(valor: 199.99)
var saldoAtual = contaFelipe.consultarSaldo()
print("Saldo atual: R$\(saldoAtual)")


// Exercício 2: Gerenciador de Filmes
// Objetivo: Desenvolver uma classe chamada 'Filme' para gerenciar informações sobre filmes em um acervo pessoal.
//
// Descrição:
// Propriedades:
// - titulo (String): O título do filme.
// - diretor (String): O diretor do filme.
// - ano (Int): O ano de lançamento do filme.
// Construtor:
// - Inicialize titulo, diretor e ano.
// Métodos:
// - exibirInfo() -> String: Retorna uma string com todas as informações do filme formatadas.

//   Para usar este método, crie uma instância da classe, chame o método e armazene a informação retornada em uma variável. Em seguida, imprima essa variável para visualizar os detalhes do filme.

class Filme {
    var titulo: String
    var diretor: String
    var ano: Int
    init(titulo: String, diretor: String, ano: Int) {
        self.titulo = titulo
        self.diretor = diretor
        self.ano = ano
    }
    
    func exibirInfo () -> String{
        return "O filme, \(titulo), estreiou no ano de \(ano), e foi dirigido por \(diretor)"
    }
}

var avatar:Filme = Filme(titulo: "Avatar: Fogo e Cinzas", diretor: "James Cameron", ano: 2025)

var exibirInfoFilme = avatar.exibirInfo()
print(exibirInfoFilme)

// Exercício 3: Sistema de Registro de Alunos
// Objetivo: Criar uma classe chamada 'Aluno' para armazenar dados e calcular a média de notas de alunos em uma escola.
//
// Descrição:
// Propriedades:
// - nome (String): O nome do aluno.
// - notas (Array<Double>): Uma lista de notas do aluno.
// Construtor:
// - Inicialize nome e notas.
// Métodos:
// - calcularMedia() -> Double: Calcula e retorna a média das notas do aluno utilizando um laço de repetição para somar as notas.

//   Para utilizar este método, crie uma instância da classe, invoque o método para calcular a média, armazene esse valor em uma variável e imprima a média para visualizar.
// print("Média das notas de \(aluno.nome): \(media)")

class Aluno {
    var nome:String
    var notas:[Double]
    init(nome: String, notas: [Double]) {
        self.nome = nome
        self.notas = notas
    }
    func calcularMedia () -> Double {
        var somaDeNotas = 0.00
        var media = 0.00
        for nota in notas {
            somaDeNotas += nota
        }
        media = somaDeNotas / Double(notas.count)
        return media
    }
}

var alunoFelipe: Aluno = Aluno(nome: "Felipe", notas: [7.9,5.8,9.9,8.4])
var media = alunoFelipe.calcularMedia()
print(media)





//Desafio 1 – Sistema de Pagamento
//📌 Descrição
//Você está criando um sistema que processa diferentes formas de pagamento.
//Cada tipo de pagamento calcula a taxa de forma diferente.
// O que precisa ser feito
//Crie uma classe base chamada Pagamento
//Essa classe deve ter um método calcularValorFinal(valor: Double) -> Double
//Crie duas subclasses:
//CartaoCredito
//Pix
//Cada forma de pagamento deve calcular a taxa de forma diferente:
//Cartão de crédito: taxa de 5%
//Pix: sem taxa
//Crie um array do tipo [Pagamento]
//Percorra esse array e imprima o valor final de cada pagamento

// Regras
//Use override
//Não use if ou switch para decidir o tipo de pagamento


class Pagamento {
    
    func calcularValorFinal(valor:Double) -> Double {
        return valor
    
    }
}

class CartaoCredito:Pagamento {
    
  
    
    override func calcularValorFinal(valor: Double) -> Double {
        return valor + (valor * 5 / 100)
    }
}

class Pix:Pagamento {
    
    override func calcularValorFinal(valor: Double) -> Double {
        return valor
    }
}

var pagamento: [Pagamento] = [CartaoCredito(),Pix()]

for metodo in pagamento {
    let valorFinal = metodo.calcularValorFinal(valor: 100)
    print(valorFinal)
}




//Desafio 2 – Notificações do App
// Descrição
//Um app envia notificações por diferentes canais.
//Cada canal envia a mensagem de uma forma diferente.
// O que precisa ser feito

//Crie uma classe base Notificacao
//Crie o método enviar(mensagem: String)
//Crie pelo menos duas subclasses:
//Email
//SMS
//Cada classe deve sobrescrever o método enviar
//Armazene as notificações em um array [Notificacao]
//Envie a mesma mensagem para todas

// Regras
//O código que envia a mensagem não pode saber qual é o tipo da notificação


class Notificacao {
    func enviar(mensagem:String){}
}

class Email:Notificacao {
    override func enviar(mensagem: String) {
        print(mensagem)
    }
}

class SMS:Notificacao {
    override func enviar(mensagem: String) {
        print(mensagem)
    }
}

let notificacaos: [Notificacao] = [Email(),SMS()]


for notificacao in notificacaos {
    notificacao.enviar(mensagem: "Ola voce recebeu uma mensagem")
}


//Desafio 3 – Cofre Digital

// Descrição
//Você precisa criar um cofre digital que protege um valor armazenado.
//🎯 O que precisa ser feito
//Crie uma classe Cofre
//O valor armazenado deve ser private
//Crie métodos para:
//Depositar valor
//Sacar valor
//O saque só pode acontecer se houver saldo suficiente
//Crie um método para consultar o saldo

//⚠️ Regras
//O saldo não pode ser acessado diretamente
//Todo acesso deve passar pelos métodos da classe

class Cofre {
    
    private var valorAmarzenado: Double
    
    init(valorAmarzenado: Double) {
        self.valorAmarzenado = valorAmarzenado
    }
    
    func depositarValor (valor:Double) {
        valorAmarzenado += valor
    }
    
    func consultarSaldo () -> Double{
        return valorAmarzenado
    }
    
    func sacar (valor:Double) {
        if valorAmarzenado < valor {
            print("Você não tem saldo suficiente")
        }else{
            valorAmarzenado -= valor
            print("Você realizou um saque no valor de: R$\(valor)")
        }
    }
}


var minhaConta:Cofre = Cofre(valorAmarzenado: 1500.00)

print(minhaConta.consultarSaldo())
minhaConta.depositarValor(valor: 200.00)
print(minhaConta.consultarSaldo())
minhaConta.sacar(valor: 1473.00)
print(minhaConta.consultarSaldo())


//Desafio 4 – Usuário Seguro
// Descrição
//Você está criando um sistema de usuários onde a senha precisa ser protegida.
// O que precisa ser feito
//Crie uma classe Usuario
//A senha deve ser private
//A senha só pode ser alterada por um método
//A nova senha deve ter pelo menos 6 caracteres
//Se não for válida, a senha não deve ser alterada

// Regras
//Não permita acesso direto à senha
//A validação deve acontecer dentro da classe


class Usuario {
    private var senha:String
    init(senha: String) {
        self.senha = senha
    }
    
    func alterarSenha (senha:String){
        if senha.count < 6 {
            print("Formato de senha inválida!")
        }else {
            self.senha = senha
            print("Senha alterada com sucesso!")
        }
        
    }
    
}

var minhaSenha:Usuario = Usuario(senha: "123456")

minhaSenha.alterarSenha(senha: "123456")

//Desafio 5 – Funcionários da Empresa
// Descrição
//Uma empresa possui funcionários de tipos diferentes, e cada um tem uma forma distinta de cálculo salarial.
// O que precisa ser feito
//Crie uma classe base Funcionario
//Crie um método calcularSalario() -> Double
//Crie subclasses como:
//CLT
//PJ
//Cada tipo deve calcular o salário de forma diferente
//Armazene os funcionários em um array [Funcionario]
//Percorra o array imprimindo o salário de cada funcionário
//Regras
//Use polimorfismo
//Não use if ou switch
//O salário não pode ser um valor público e alterável diretamente


class Funcionario {
    func calcularSalario () -> Double {
        return 0
    }
}

class CLT:Funcionario {
    
    private var salarioBase:Double
    init(salarioBase: Double) {
        self.salarioBase = salarioBase
    }
    
    override func calcularSalario() -> Double {
        return salarioBase
    }
    
}

class PJ:Funcionario {
    private let horasTrabalhada:Double
    private let valorHora:Double
    init(horasTrabalhada: Double, valorHora: Double) {
        self.horasTrabalhada = horasTrabalhada
        self.valorHora = valorHora
    }
    
    override func calcularSalario() -> Double {
        return valorHora * horasTrabalhada
    }
    
}

var funcionarios:[Funcionario] = [CLT(salarioBase: 2000.00),PJ(horasTrabalhada: 168, valorHora: 60)]

for funcionario in funcionarios {
    print(funcionario.calcularSalario())
}


