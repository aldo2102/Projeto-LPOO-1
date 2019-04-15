Algoritmo "ProjetoLPOO1BIM"
// Disciplina   : Lógica de Programação
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

   //----------Função para questão 1----------

funcao funcdivisao(num1:inteiro;num2:inteiro):real
inicio
   divisao<-num1/num2
   retorne divisao
fimfuncao
//--------- Fim da função da questão 1----------

//---------MENU DE OPÇÕES------------
inicio
   repita
      escreval("ESCOLHA UMA OPÇÃO DE 1 A 7")
      escreval("OPÇÃO 1: Divisao de dois numeros")
      escreval("OPÇÃO 2  Soluçao de faixa etária")
      escreval("OPÇÃO 3: Solução de numeros primos")
      escreval("OPÇÃO 4: Determinar o maior, o menor e a media de números")
      escreval("OPÇÃO 5: Exercício de Código Morse")
      escreval("OPÇÃO 6: Mudança de base")
      escreval("OPÇÃO 7: Sair do programa")
      leia(menu)
      limpatela
      se(menu="1") entao
         escreval("Entre com o primeiro número")
         leia(n1)
         escreval("Entre com o segundo número")
         leia(n2)
         resultado<-funcdivisao(n1,n2)
         escreval("O resultado é: ",resultado)
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
         escreval("Média da idade das pessoas é de",mediaidade," anos.")
         mediam<-idadem/totalm
         mediaf<-idadef/totalf
         escreval("Média da idade do sexo masculino é de: ",mediam," anos.")
         escreval("Média da idade do sexo feminino é de: ",mediaf," anos.")
      fimse
      se(menu="3")entao
         escreval("Entre com um número: ")
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
            escreval("a soma dos numeros primos é: ",x)
         fimse
      fimse
   ate(menu="7")
Fimalgoritmo