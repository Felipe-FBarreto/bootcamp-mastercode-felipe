//
//  main.swift
//  estrutura-condicionais
//
//  Created by Felipe iOS on 28/01/26.
//

import Foundation

//MARK: Exercicio alunos


//1- Crie uma função que receba dois parâmetros (nota1: Double, nota2: Double) e retorne "Aluno aprovado” se a media das notas for maior ou igual a 7. Caso contrário retorne "Aluno reprovado"

func notas (notas1:Double,nota2:Double) -> String{
    let notaDeAprovacao:Double = 7
    let media:Double = (notas1 + nota2) / 2
    if media >= notaDeAprovacao {
        return "Aluno aprovado"
    }
    else{
        return "Aluno reprovado"
    }
}

let notaAluno = notas(notas1: 10, nota2: 9)
print(notaAluno)


//2- Crie uma função "desconto" que receba um parâmetro (total: Double). Caso o total (parâmetro) seja menor que 100.0, dê 10% de desconto. Caso o valor esteja entre 100.0 e 200.0 dê 15% de desconto. Valores acima de 200.0 dê 20% de desconto. A função tem que ter um retorno do tipo Double que vai ser o total (parâmetro) com o desconto aplicado de acordo com as condições citadas.
// Dica: return total * 0.9 (isso significa o valor com 10% de desconto)

func desconto (total:Double) -> Double {
    var descontoFinal:Double = 0
    if total <= 100.0{
         descontoFinal += total - (total * 10 / 100)
    }else if total <= 200.00 {
         descontoFinal += total - (total * 15 / 100)
    }else {
        descontoFinal += total - (total * 20 / 100)
    }
    return descontoFinal
}

var descontoDoProduto = desconto(total: 130.0)
print(descontoDoProduto)

//3- Crie uma função semáforo que receba uma parâmetro do tipo string. Se o valor recebido no parâmetro for vermelho, retorne "PARE", se for amarelo, retorne "ATENÇÃO", se for verde, retorne "SIGA EM FRENTE", se não, retorne "PARÂMETRO INVÁLIDO" caso o valor recebido seja diferente dos já citados.

func semafaro (cor:String) -> String{
    if cor == "vermelho" {
        return "PARE"
    }else if cor == "amarelo" {
        return "ATENÇÃO"
    }else if cor == "verde" {
        return "SIGA EM FRENTE"
    }
    return "PARÂMETRO INVÁLIDO"
}

var semafaroAtivo = semafaro(cor: "verde")
print(semafaroAtivo)

//4- Crie uma função que receba dois parâmetros (eFimDeSemana: Bool, tenhoDinheiro: Bool) e caso
//seja final de semana e você tenha dinheiro, print "VAMOS PASSEAR", caso contrário, print "VAMOS FICAR EM CASA"

func sabadou (eFimDeSemana:Bool,tenhoDinheiro:Bool) {
    if eFimDeSemana && tenhoDinheiro {
        print("VAMOS PASSEAR")
    }else{
        print("VAMOS FICAR EM CASA")
    }
}

sabadou(eFimDeSemana: false, tenhoDinheiro: true)


//5- Crie uma função que receba dois parâmetros do tipo Double e caso o valor do 1° parâmetro seja maior que o valor do 2° parâmetro. Retorne "Bola", caso contrário, retorne "Banana"

func validacaoDeParametros (valor1:Double,valor2:Double) -> String{
    if valor1 > valor2 {
        return "Bola"
    }
    return "Banana"
}

var parametros = validacaoDeParametros(valor1: 15.0, valor2: 10.2)
print(parametros)

//6- Crie uma função que receba um parâmetro (foiConvidado: Bool). Caso o valor seja true, print "Liberado para a festa" Caso contrário, print "Infelizmente você não foi convidado"

func festa (foiConvidade:Bool)  -> String{
    if foiConvidade {
        return "Liberado para a festa"
    }else {
        return "Infelizmente você não foi convidado"
    }
}
    
var convite = festa(foiConvidade: true)
    
print(convite)


//7 - Implemente uma função que receba a idade de uma pessoa e determine se ela tem direito a entrada gratuita em um evento. Entrada gratuita é concedida para pessoas com menos de 5 anos ou mais de 65 anos.


func validarIdade (idade:Int) {
    if idade <= 5 || idade >= 65 {
        print("Você tem direito a entrada gratuita")
    }
    print("Você não tem direito a entrada gratuita")
}

validarIdade(idade: 50)


//8 - Crie uma função que receba um score de crédito (tipo Int) de 0 a 1000 e retorne se a pessoa tem um "Bom crédito" (score acima de 700), "Crédito regular" (score entre 300 e 700) ou "Mau crédito" (abaixo de 300).

func score (value:Int) {
    
    if value >= 700{
        print("Bom crédito")
    }else if value >= 300 {
        print("Crédito regular")
    }else{
        print("Mau crédito")
    }
}

score(value: 701)

//9 - Implemente uma função que receba um dia da semana (tipo String) e retorne "Dia útil" se for de segunda a sexta, e "Final de semana" se for sábado ou domingo.


func finalDeSemana (dia:String) -> String {
    if dia != "Sabado" || dia != "Domingo" {
        return "Dia útil"
    }else {
        return "Dinal de semana"
    }
}

var sexta = finalDeSemana(dia: "Sexta")
print(sexta)

//10 - Desenvolva uma função que receba uma senha (tipo String) e retorne "Senha fraca" se tiver menos de 6 caracteres, "Senha média" se tiver entre 6 e 8 caracteres, e "Senha forte" se tiver mais de 8 caracteres.
// Dica: Para descobrir a quantidade de caracteres de uma string, basta utilizar a propriedade .count
// var nome: String = "caio"
// print(nome.count) -> vai printar a quantidade de caracteres


func validarSenha (senha:String)  -> String{
    if senha.count < 6 {
        return "Senha fraca"
    }else if senha.count <= 8 {
        return "Senha média"
    }
    return "Senha forte"
}

var minhaSenha = validarSenha(senha: "123456782")

print(minhaSenha)


//11 - Crie uma função que receba a altura de uma pessoa em metros (tipo Double) e retorne "Baixa" se for menor que 1.60 metros, "Média" se for entre 1.60 e 1.85 metros, e "Alta" se for maior que 1.85 metros.

func alturaPessoa (altura:Double) -> String {
    if altura <= 1.60 {
        return "Baixa"
    }else if altura <= 1.80 {
        return "Média"
    }else {
        return "Alta"
    }
}

var alturaFelipe = alturaPessoa(altura: 1.73)
print(alturaFelipe)

//12 - Crie uma função que receba a idade de uma pessoa (tipo Int) e o tempo de serviço em anos (tipo Int). Uma pessoa é elegível para promoção se tiver mais de 30 anos e mais de 5 anos de serviço. A função deve retornar "Promoção Elegível" se ambas as condições forem verdadeiras, e "Promoção Não Elegível" caso contrário.

func idadePessoa (idade:Int,tempoDeServico:Int) {
    let elegivel = idade > 30 && tempoDeServico > 5
    
    if elegivel {
        print("Promoção Elegível")
    }else {
        print("Promoção Não Elegível")
    }
}

idadePessoa(idade: 31, tempoDeServico: 7)

//13 - Implemente uma função que receba a previsão de chuva (tipo Bool) e a temperatura (tipo Double). O evento ao ar livre deve ser cancelado se chover (true) ou se a temperatura for inferior a 15 graus. A função deve retornar "Evento Cancelado" se alguma das condições for verdadeira, e "Evento Confirmado" caso contrário.


func previsaoDoTempo (vaiChover:Bool,temperatura:Double) {
    let eventoCancelado = vaiChover || temperatura <= 15
    
    if eventoCancelado {
        print("Evento Cancelado")
    }else {
        print("Evento Confirmado")
    }
}

previsaoDoTempo(vaiChover: true, temperatura: 29)

//14 - Desenvolva uma função que receba uma senha (tipo String) e a hora do dia (tipo Int, representando a hora). O acesso é permitido se a senha for "1234" e for entre as 9h e as 17h. A função deve retornar "Acesso Permitido" se ambas as condições forem verdadeiras, e "Acesso Negado" se qualquer uma das condições não for atendida.

func acessoConta (senha:String,hora:Int) {
    let acessoPermitido = senha == "1234" && hora > 9 && hora < 17
    
    if acessoPermitido {
        print("Acesso Permitido")
    }else {
        print("Acesso Negado")
    }
}

acessoConta(senha: "1235", hora: 14)


















