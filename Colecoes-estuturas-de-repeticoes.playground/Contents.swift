import UIKit

var greeting = "Hello, playground"

// MARK: Exercício 1: Crie uma lista vazia e depois adicione 3 itens. Por fim, utilize o for para printar esses elementos

var produtos:[String] = []
produtos.append("MacBook")
produtos.append("IPhone")
produtos.append("Apple Watch")

for produto in produtos {
    print(produto)
}


// MARK: Exercício 2: Crie um dicionario String:String com 3 itens. Imprima utilizando o for a chave de cada um deles.


let estados:[String:String] = ["SP":"São Paulo","RJ":"Rio de Janeiro","MG":"Minas Gerais"]


for estado in estados {
    print("A chave é: \(estado.key)")
}


// MARK: Exercício 3: Adicionar chave e valor em um dicionário e imprimir ambos utilizando o for print("\(chave): \(valor)")


let pontuacaoJogador:[String:Double] = ["CR7":10.0,"Messi":9.9,"Neymar":8.912]

for pontos in pontuacaoJogador {
    print("\(pontos.key): \(pontos.value)")
}

// MARK: Exercício 4: Crie um array com 3 itens. Percorra o array utilizando o for, e realize o print de cada item. Realize o reverso do array que você criou.

var notasAlunos:[Int] = [10,9,5]

for nota in notasAlunos {
    print(nota)
}

notasAlunos.reverse()

print(notasAlunos)

// MARK: Exercício 5: Crie um array de números inteiros. Utilizando o for, percorra o array e soma cada valor. Por fim, imprima o valor total de todos os números



var pontos:[Int] = [19,35,25,8,149]

var soma = 0

for ponto in pontos {
    soma += ponto
}

print(soma)



//Você tem uma lista de compras com alguns itens.
//Desafio:
//Crie uma coleção com 5 itens de mercado
//Mostre todos os itens no console
//👉 Objetivo: entender Array e acesso aos elementos.


var listaCompras:[String] = ["Arroz","Feijão","Macarrão","Legumes","Frutas"]

print(listaCompras[0])
print(listaCompras[1])
print(listaCompras[2])
print(listaCompras[3])
print(listaCompras[4])



//Você tem uma lista com nomes de alunos.
//Desafio:
//Crie uma coleção com alguns nomes
//Mostre quantos alunos existem na lista
//👉 Objetivo: usar .count.

let nomesAlunos:[Int:String] = [1:"Alana",2:"Bruno",3:"Carol",4:"Daniel",5:"Felipe"]

print(nomesAlunos.count)

//Você tem uma lista de frutas
//Desafio:
//Verifique se a fruta "banana" existe na lista
//Mostre uma mensagem dizendo se existe ou não
//👉 Objetivo: trabalhar com contains.

var frutas = ["Melancia","Pera","Banana","Manga"]

print(frutas.contains("Banana"))


//Você tem uma lista de tarefas.
//Desafio:
//Adicione uma nova tarefa à lista
//Mostre a lista atualizada
//👉 Objetivo: adicionar elementos em uma coleção.

var toDo:[String] = ["Praticar Swift","Ir ao mercado","Passear com o cachorro"]

toDo.append("Comprar passagens")

print(toDo)


//🔁 Desafios Básicos — Estruturas de Repetição

//Você precisa mostrar números de 1 até 10.
//Desafio:
//Use uma estrutura de repetição para mostrar esses números
//👉 Objetivo: entender for.

for value in 1...10 {
    print(value)
}


//Você tem uma lista de nomes.
//Desafio:
//Use um laço de repetição para mostrar cada nome
//👉 Objetivo: percorrer um Array com for.

var nomesCompletos:[String] = ["Felipe","Ludi","Junior","Selma","Otavio"]

for nome in nomesCompletos {
    print(nome)
}

//Você tem uma lista de números.
//Desafio:
//Some todos os números da lista
//Mostre o resultado final
//👉 Objetivo: repetição + lógica simples.

let precosProdutos:[Double] = [59.99,35.99,17.00,99.99]

var somaDosProdutos = 0.00

for valor in precosProdutos {
    somaDosProdutos += valor
}
print(somaDosProdutos)
//Você quer mostrar números de 0 até 5.
//Desafio:
//Use uma estrutura de repetição para isso
//👉 Objetivo: entender intervalo (0...5).


for value in 0...5 {
    print(value)
}

// Desafios Mistos (Coleções + Repetição)
// Lista de alunos
//Você tem uma lista de alunos com idades.
//Desafio:
//Guarde os nomes em uma coleção
//Use repetição para mostrar cada nome
//👉 Objetivo: unir Array + for.


var nomesDeAlunos:[String] = ["João","Bruno","Thiago","Ana Luiza","Joana"]

for nome in nomesDeAlunos{
    print(nome)
}

//Verificando notas
//Você tem uma lista de notas.
//Desafio:
//Use repetição para verificar quais notas são maiores ou iguais a 7
//Mostre apenas essas notas
//👉 Objetivo: for + condição.

var notasDoBimestre:[Double] = [7.9,8.5,10.0,9.8,5.4,3.2,4.0]

for nota in notasDoBimestre {
    if nota >= 7 {
        print(nota)
    }
}
