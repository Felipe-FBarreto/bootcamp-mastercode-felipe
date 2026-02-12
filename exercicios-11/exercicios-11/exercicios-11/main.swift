//
//  main.swift
//  exercicios-11
//
//  Created by Felipe iOS on 11/02/26.
//

import Foundation


//Desafio 1 — Cadastro de Funcionário com Promoção

struct FuncionariosDados {
  
    var nome:String
    var idade:Int
    var cargo:String

}

class Funcionario {
    var dadosFuncionarios:FuncionariosDados
    var salario:Double
    init(dadosFuncionarios: FuncionariosDados, salario: Double) {
        self.dadosFuncionarios = dadosFuncionarios
        self.salario = salario
    }
    func criarFuncionario(nome:String,idade:Int,cargo:String) -> Funcionario{
        
        let funcionario = FuncionariosDados(nome: nome, idade: idade, cargo: cargo)
        return Funcionario(dadosFuncionarios: funcionario, salario: 0)
        
    }
    func promover(promocao:String) {
        dadosFuncionarios.cargo = promocao
    }
    func aumentarSalario(valor:Double) {
        salario += valor
    }
    
}


var funcionario:Funcionario = Funcionario(dadosFuncionarios: FuncionariosDados(nome: "Felipe", idade: 30, cargo: "Dev Mobile JR"), salario: 4500)
print(funcionario.dadosFuncionarios)
funcionario.aumentarSalario(valor: 5200)
print(funcionario.salario)
funcionario.promover(promocao: "Dev moble PL")
print(funcionario.dadosFuncionarios.cargo)

let joao = funcionario.criarFuncionario(nome: "Joao", idade: 35, cargo: "Lider Tecnico")
print(joao.dadosFuncionarios)


//Desafio 2 — Carrinho de Compras


struct Produto {
    var nome:String
    var preco:Double
    
}

class Carrinho  {
    var listaProduto:[Produto]
    init(listaProduto: [Produto]) {
        self.listaProduto = listaProduto
    }
    
    func addProduct(produto:Produto){
        listaProduto.append(produto)
    }

        func removeProduct(produto: Produto) {
            listaProduto.removeAll { item in
                item.nome == produto.nome &&
                item.preco == produto.preco
            }
        }
    func calcularTotal () -> Double{
        let total = listaProduto.reduce(0) {total,produto in
            total + produto.preco
        }
        return total
    }
    
}

let produtos = Carrinho(listaProduto: [Produto(nome: "Mackbook M4", preco: 9000.0),Produto(nome: "Notbook", preco: 5200.00)])
for produto in produtos.listaProduto {
    print("Nome: \(produto.nome) - Preço: \(produto.preco)")
}
let tl = produtos.calcularTotal()
print(tl)


//Desafio 3 — Conta Bancária

struct Cliente {
    var nome:String
    var CPF:Double
    
}

class ContaBancaria {
    var cliente:Cliente
    var saldo:Double = 0
    
    init(cliente: Cliente) {
        self.cliente = cliente
    }
    func depositar(valor:Double){
        saldo += valor
    }
    func sacar(valor:Double) {
        if valor > saldo{
            print("Saldo insuficiente")
        }else{
            saldo -= valor
        }
       
    }
    func verSaldo() -> Double{
        return saldo
    }
}

let contaFelipe:ContaBancaria = ContaBancaria(cliente: Cliente(nome: "Felipe", CPF: 43340298712))

print(contaFelipe.verSaldo())
contaFelipe.depositar(valor: 4000.00)
print(contaFelipe.verSaldo())
contaFelipe.sacar(valor: 3980)
print(contaFelipe.verSaldo())


//Desafio 4 — Sistema Escolar


struct Aluno {
    var nome:String
    var matriculo:Double
    
}

class Matricula {
    var notas:[Double]
    
    init(notas: [Double]) {
        self.notas = notas
    }
    func calcularMedia() {
        let total = notas.reduce(0) {total, nota in
            total + nota
        }
        let medeia = total / Double(notas.count)
        
        if medeia >= 7 {
            print("Aprovado")
        }else{
            print("Reprovado")
        }
    }
    
}

let matriculaFelipe:Matricula = Matricula(notas: [9.0,5.8,10.0,8.9,9.7,7])

matriculaFelipe.calcularMedia()


//Desafio 5 — Frota de Veículos

struct Veiculo {
    var modele:String
    var placa:String
}

class Frota {
    var veiculos:[Veiculo] = [Veiculo(modele: "", placa: "")]
    
    func adicionar(veiculo:Veiculo) {
        veiculos.append(veiculo)
    }
    
    func listar(){
        for veiculo in veiculos {
            print("Modelo: \(veiculo.modele), placa: \(veiculo.placa)")
        }
    }
}


var frota:Frota = Frota()
frota.adicionar(veiculo: Veiculo(modele: "BMW X6", placa: "PWK9J81"))
frota.adicionar(veiculo: Veiculo(modele: "FERRARI", placa: "KLA0L35"))
frota.listar()


//Desafio 6 — Sistema de Animais


class Animal {
    func emitirSom(){
    }
}

class Cachorro:Animal {
    override func emitirSom() {
        print("Latiu")
    }
}

class Gato:Animal {
    override func emitirSom() {
        print("Miou")
    }
}

let cachorro:Cachorro = Cachorro()
cachorro.emitirSom()
let gato:Gato = Gato()
gato.emitirSom()

    


//Desafio 7 — Funcionários e Bônus


class Funcinario1 {
    var salario:Double
    
    init(salario: Double) {
        self.salario = salario
    }
    func bonus () -> Double { return 0.0}
}

class Gerente:Funcinario1 {
    override func bonus() -> Double {
        return super.salario * 0.20
    }
}

class Dev:Funcinario1 {
    override func bonus() -> Double{
        return super.salario * 0.10
    }
}

let dev:Dev = Dev(salario: 8400.00)
print(dev.bonus())
let gerente:Gerente = Gerente(salario: 16000.00)
print(gerente.bonus())

//Desafio 8 — Formas Geométricas

class Forma {
    func area() -> Double{
        return 0.0
    }
}

class Quadrado:Forma {
    let lado:Double
    init(lado: Double) {
        self.lado = lado
    }
    override func area() -> Double {
        return lado * lado
    }
}

class Circulo:Forma {
    let raio:Double
    init(raio: Double) {
        self.raio = raio
    }
    override func area() -> Double {
        return Double.pi * pow(raio, 2)
    }
}

let quadrado:Quadrado = Quadrado(lado: 5)
print(quadrado.area())
let circulo:Circulo = Circulo(raio: 5)
print(circulo.area())



//Desafio 9 — Pagamentos

class Pagamento{
    func processando(){
        
    }
}
    
class Pix:Pagamento {
    override func processando() {
        print("Pagamento realizado com Pix!")
    }
}

class Cartao:Pagamento {
    override func processando() {
        print("Pagamento realizado por Cartão!")
    }
}

class Boleto:Pagamento {
    override func processando() {
        print("Pagamento realizado por Boleto!")
    }
}


let formasDePagamento:[Pagamento] = [Cartao(),Pix(),Boleto()]

for forma in formasDePagamento{
    forma.processando()
}


//Desafio 10 — Veículos

class Veiculo2 {
    func mover(){
        
    }
}

class Carro:Veiculo2{
    override func mover() {
        print("O Carro se moveu")
    }
}


class Moto:Veiculo2{
    override func mover() {
        print("O Moto se moveu")
    }
}

let veiculos2:[Veiculo2] = [Carro(),Moto()]

for veiculo in veiculos2 {
    veiculo.mover()
}


//Desafio 11 — Números Pares


for index in 1...100 {
    if index % 2 == 0{
        print("O número: \(index) é par")
    }
}
              

//Desafio 12 — Soma de Compras


let caixa:[Double] = [57.99,13.59,119.89,37.89,4.99]

let total = caixa.reduce(0) {total,valor in
    total + valor
}
print(total)


//Desafio 13 — Tabuada

let numero = 3

for index in 1...10 {
    print("\(numero)x\(index) = \(numero * index)")
}

//Desafio 14 — Contagem Regressiva

for index in stride(from: 10, through: 0, by: -1){
    print(index)
}



//Desafio 15 — Média de Notas

func somarMedia(notas:[Double]) -> Double{
    let soma = notas.reduce(0){total,nota in total + nota}
    return soma / Double(notas.count)
}

let media = somarMedia(notas: [10.0,9.8,7.6,4.3,8,7])
print(media)
