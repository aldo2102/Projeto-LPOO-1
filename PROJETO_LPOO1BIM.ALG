Algoritmo "ProjetoLPOO1BIM"
// Disciplina   : L�gica de Programa��o
// Professor   : Aldo Henrique
// Autor(a)    : Jorge Braga

Var
   menu:caracter
   n1,n2,resultado,divisao:real
   numero,contador,cont1,cont2,x:inteiro
   m,f,sexo:caracter
   qp,idade,y:inteiro
   totalm,totalf,totalidade,idadem,idadef:inteiro
   mediaidade,mediam,mediaf:real

   //----------Fun��o para quest�o 1----------

funcao funcdivisao(num1:inteiro;num2:inteiro):real
inicio
   divisao<-num1/num2
   retorne divisao
fimfuncao
//--------- Fim da fun��o da quest�o 1----------

//---------MENU DE OP��ES------------
inicio
   repita
      escreval("ESCOLHA UMA OP��O DE 1 A 7")
      escreval("OP��O 1: Divisao de dois numeros")
      escreval("OP��O 2  Solu�ao de faixa et�ria")
      escreval("OP��O 3: Solu��o de numeros primos")
      escreval("OP��O 4: Determinar o maior, o menor e a media de n�meros")
      escreval("OP��O 5: Exerc�cio de C�digo Morse")
      escreval("OP��O 6: Mudan�a de base")
      escreval("OP��O 7: Sair do programa")
      leia(menu)
      limpatela
      se(menu="1") entao
         escreval("Entre com o primeiro n�mero")
         leia(n1)
         escreval("Entre com o segundo n�mero")
         leia(n2)
         resultado<-funcdivisao(n1,n2)
         escreval("O resultado �: ",resultado)
      fimse
      se(menu="2")entao
         escreval("Entre com a quantidade de pessoas")
         leia(qp)
         para y de 1 ate qp faca
            escreval("Entre com a idade da",y," pessoa")
            leia(idade)
            totalidade<-totalidade+idade
            escreval("Entre com o sexo da",y," pessoa")
            leia(sexo)
            se (sexo="m") entao
               totalm<-totalm+1
               idadem<-idadem+idade
            senao
               se (sexo="f") entao
                  totalf<-totalf+1
                  idadef<-idadef+idade
               fimse
            fimse
         fimpara
         mediaidade<-totalidade/qp
         escreval("M�dia da idade das pessoas � de",mediaidade," anos.")
         mediam<-idadem/totalm
         mediaf<-idadef/totalf
         escreval("M�dia da idade do sexo masculino � de: ",mediam," anos.")
         escreval("M�dia da idade do sexo feminino � de: ",mediaf," anos.")
      fimse
      se(menu="3")entao
         escreval("Entre com um n�mero: ")
         leia(numero)
         contador<-0
         cont1<-2
         cont2<-1
         se numero>0 entao
            enquanto cont1<=numero faca
               enquanto cont2<=cont1 faca
                  se cont1 mod cont2=0 entao
                     contador<-contador+1
                  fimse
                  cont2<-cont2+1
               fimenquanto
               se contador=2 entao
                  escreval(cont1)
                  x<-x+cont1
               fimse
               cont1<-cont1+1
               cont2<-1
               contador<-0
            fimenquanto
            escreval("a soma dos numeros primos �: ",x)
         fimse
      fimse
   ate(menu="7")
Fimalgoritmo