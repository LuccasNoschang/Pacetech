algoritmo "Conversão de temperatura"

var

temperaturaF, TemperaturaC: real

inicio

Escreval("Informe a temperatura")
leia (temperaturaF)

temperaturaC <- (TemperaturaF-32)/1.8

Escreval("Sua temperatura em Celsius é:")
Escreval(temperaturaC)



se temperaturaC >= 28 entao
   Escreval ("Está calor!")

senao
   se temperaturaC <= 15 entao
      Escreval ("Está frio!")

   senao
      Escreval ("Está agradavel")

   fimse
fimse

fimalgoritmo
