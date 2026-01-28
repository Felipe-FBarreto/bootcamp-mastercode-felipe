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





