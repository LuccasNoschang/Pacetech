algoritmo "Tabela de conversão"

var
tempC, tempF, mConv, mReal, mDolar: real
opcaoMenu, selsair: literal

inicio
repita
   escreval("")
   escreval("Selecione a opção desejada no menu: ")
   escreval("")
   escreval("1 - Converter temperatura Fahrenheit para Celsius")
   escreval("2 - Converter temperatura Celsius para Fahrenheit")
   escreval("3 - Converter moeda Real (R$) para Dolar ($)")
   escreval("4 - Converter moeda Dolar ($) para Real (R$)")
   escreval("5 - Sair")
   leia(opcaoMenu)
   escolha opcaoMenu
   caso = "1"
      escreval("Informe a temperatura em Fahrenheit que sera convertida para Celsius: ")
      leia(tempF)
      tempC <- (tempF-32)/1.8
      limpatela
      escreval("")
      escreval(tempF,"ºF equivale a ",tempC:1:2,"ºC")
      escreval("")

   caso = "2"
      escreval("Informe a temperatura em Celsius que sera convertida para Fahrenheit: ")
      leia(tempC)
      tempF <- (tempC*1.8)+32
      limpatela
      escreval("")
      escreval(tempC,"ºC equivale a ",tempF:1:2,"ºF")
      escreval("")

   caso = "3"
      escreval("Informe o valor da moeda em Real (R$) que sera convertido em Dolar ($): ")
      leia(mReal)
      escreval("Informe o valor da cotação: ")
      leia(mConv)
      mDolar <- mReal * mConv
      limpatela
      escreval("")
      escreval(" R$", mReal:1:2, " equivale a $", mDolar:1:2)
      escreval("")

   caso = "4"
      escreval("Informe o valor da moeda em Dolar ($) que sera convertido  convertido em Real (R$): ")
      leia(mDolar)
      escreval("Informe o valor da cotação: ")
      leia(mConv)
      mReal <- mDolar / mConv
      limpatela
      escreval("")
      escreval(" $", mDolar:1:2, " equivale a R$", mReal:1:2)
      escreval("")

  caso "5"
      opcaoMenu <-"5"
   fimescolha
   escreval("Deseja sair? s/n")
   leia (selsair)
   se selsair = "s" entao
   limpatela
      opcaoMenu <-"5"
   senao
      limpatela
   fimse
ate opcaoMenu = "5"
fimalgoritmo

