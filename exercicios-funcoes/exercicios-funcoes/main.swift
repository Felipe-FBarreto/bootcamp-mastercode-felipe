//
//  main.swift
//  exercicios-funcoes
//
//  Created by Felipe iOS on 25/01/26.
//

import Foundation


//MARK: Exercicios
//Criar função onde ela mostre na area de debug a frase: "Olá mundo, estou aprendendo a criar minhas primeiras funções".

func halloWord () -> String {
    return "Olá mundo, estou aprendendo a criar minhas primeiras funções"
}

var hallo = halloWord()
print(hallo)

//criar função com nome soma que tenha 3 parametros (valor1: Int, valor2: Double, valor3: Int) e que ela faça uma soma entre os valores e retorno sobre valor total.


func soma (valor1: Int, valor2: Double, valor3: Int) -> Int {
    let total = valor1 + Int(valor2) + valor3
    return total
}

var total = soma(valor1: 50, valor2: 19.99, valor3: 35)
print(total)


// crie uma funcao com um parametro e com o tipo de retorno diferente do parametro

func total (valor:Double) -> Int {
    return Int(valor)
}

var valorConvertido = total(valor: 59.89)
print(valorConvertido)

// Crie uma função que receba uma idade e retorne true se for maior de idade.

func maiorDeIdade (idade:Int) -> String {
    if idade >= 18{
        return "É maior de idade"
    }
    return "É menor de idade"
}

var idade = maiorDeIdade(idade: 17)
print(idade)

//Crie uma função que receba um valor e imprima:
//O valor informado foi X

func infoValor (valor:Float) -> String{
    return "O valor informado foi: \(valor)"
}

var info = infoValor(valor: 50.9)
print(info)
//Crie uma função que receba um número e imprima o dobro dele.

func dobroDoValor (_ valor:Double) -> Double {
    return valor * 2
}
var valorDobrado = dobroDoValor(37.90)
print(valorDobrado)

//Crie uma função que receba um nome.

//Se nenhum nome for passado, imprima:

//Crie uma função que receba nome, idade e cidade e imprima tudo em uma frase.

func dados (nome:String,idade:Int,cidade:String) -> String {
    return "Olá me chamo \(nome), tenho \(idade) anos, e moro na cidade de \(cidade)."
}

var frase = dados(nome: "Felipe", idade: 30, cidade: "Catanduva")
print(frase)

//Crie uma função que receba um valor e retorne o valor com 10% de desconto.

func desconto (valor:Double) -> Double {
    let descontoAplicado = valor - (valor * 10 / 100)
    return descontoAplicado
}

var descontoAplicado = desconto(valor: 200)
print(descontoAplicado)

//Crie uma função que receba uma nota e retorne:
//    •    "Aprovado" ou
//    •    "Reprovado"



func aprovarAluno (nota:Double) -> String {
    if nota >= 6 {
        return "Aprovado"
    }
    return "Reprovado"
}

var alunoProvado = aprovarAluno(nota: 6.5)
print(alunoProvado)
