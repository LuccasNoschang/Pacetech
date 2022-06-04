Algoritmo "Algoritmo Semana 5"

Var
   opcaoMenu, nome, opcaoMoeda,temperatura,escolhaTemp: caractere
   moeda, hora,cotacao: real
   temp: vetor[1..4,1..2] de real
   contador: inteiro


procedimento nomeCliente()
inicio
   Escreval("Por favor, digite seu nome: ")
   leia (nome)
   limpatela
fimprocedimento


procedimento cotacaoDolar()
inicio
   Escreval("Insira abaixo a cotaçao atual do dolar: ")
   leia (cotacao)
   limpatela
fimprocedimento



procedimento mostrarMenu()
inicio
   Escreval(nome,", escolha abaixo qual operaçao voce precisa realizar: ")
   Escreval("")
   Escreval("1 - Conversor de moeda")
   Escreval("2 - Conversor de temperatura")
   se contador > 0 entao
      Escreval("3 - Consultar temperaturas registradas")
   fimse
   Escreval("0 - Sair ")
   leia(opcaoMenu)
   limpatela
fimprocedimento



procedimento conversorTemp()
Var
   opcaoTemp: caractere
   i: inteiro
inicio


   repita
      Escreval("Escolha abaixo qual opcao voce deseja: ")
      Escreval("1 - Converter Celsius para Fahrenheit")
      Escreval("2 - Converter Fahrenheit para Celsius")
      Escreval("0 - Voltar ao menu principal")
      leia(opcaoTemp)
      limpatela

      se (opcaoTemp = "1") ou  (opcaoTemp = "2") entao
         cadastrarTemp()
      fimse


      escolha  opcaoTemp()

      caso "1"
         para i de 1 ate 4   faca
            temp[i,1] <- (temp[i,1]* 1.8 )+ 32
            temperatura <- "Fahrenheit"
            escolhaTemp <- "1"
         fimpara
         interrompa
      caso "2"
         para i de 1 ate 4 faca
            temp[i,1] <- (temp[i,1]-32) / 1.8
            temperatura <- "Celsius"
            escolhaTemp <- "1"
         fimpara
         interrompa
      caso "0"

         interrompa

      outrocaso
         Escreval("Opçao invalida")
      fimescolha

   ate opcaoTemp = "0"

fimprocedimento


procedimento cadastrarTemp()
var
   i,j: inteiro
   aux,aux2:real
inicio

   para i de 1 ate 4 faca

      Escreval("Digite a temperatura",i)
      leia(temp[i,1])

      Escreval("Digite a hora cheia do registro ",i)
      leia(temp[i,2])
   fimpara
   limpatela

   para i de 1 ate 4 faca
      para j de 1 ate 4 faca
         se temp[j,1] > temp[i,1] entao
            aux <- temp[i,1]
            aux2 <- temp[i,2]
            temp[i,1] <- temp[j,1]
            temp[i,2] <- temp[j,2]
            temp[j,1] <- aux
            temp[j,2] <- aux2

         fimse
      fimpara
   fimpara
fimprocedimento



procedimento mostrarTemp()
var
   i,r:inteiro

inicio
   Escreval(" ","Temp ","  Hora"," ")
   para i de 1 ate 4 faca
      para r de 1 ate 2 faca
         Escreva(" ",temp[i,r]:4:2," ")
      fimpara
      Escreval("")
   fimpara
   Escreval("")
fimprocedimento



procedimento menuMoeda()
Var
   opcaoMoeda: caractere

inicio

   moeda <- 0

   repita
      Escreval("Escolha abaixo qual opcao voce deseja: ")
      Escreval("1 - Converter Real para Dolar")
      Escreval("2 - Converter Dolar para Real")
      Escreval("0 - Voltar ao menu principal")
      leia(opcaoMoeda)
      limpatela

      se (opcaoMoeda = "1") ou (opcaoMoeda = "2") entao
         Escreval("Digite o valor a ser convertido:")
         leia(moeda)
      fimse

      escolha  opcaoMoeda()

      caso "1"
         moeda <- moeda / cotacao
         Escreval("US$ ",moeda:4:2)
         Escreval("")

      caso "2"
         moeda <- moeda * cotacao
         Escreval("R$ ",moeda:4:2)
         Escreval("")

      caso "0"

         interrompa

      outrocaso
         Escreval("Opçao invalida")
      fimescolha

   ate opcaoMoeda = "0"

fimprocedimento




Inicio

   nomeCliente()

   cotacaoDolar()


   repita

      mostrarMenu()
      escolha opcaoMenu()
      caso "1"
         menuMoeda()

      caso "2"
         conversorTemp()
         se escolhaTemp = "1" entao
         Escreval("Temperaturas convertidas para ",temperatura," e registradas com sucesso!")
         Escreval("")
         mostrarTemp()
         contador <- 1


         fimse
      caso "3"
         mostrarTemp()

      caso "0"
         interrompa

      outrocaso
         Escreval("Opcao Invalida")
         Escreval("")
      fimescolha

   ate opcaoMenu = "0"



Fimalgoritmo
