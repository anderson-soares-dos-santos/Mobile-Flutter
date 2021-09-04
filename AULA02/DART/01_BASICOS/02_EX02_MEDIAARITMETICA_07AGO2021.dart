/*
LISTA DE EXERCICIOS  - 07AGO2021
Disciplina  : PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS
Professor   : JOSEFFE BARROSO DE OLIVEIRA
Autor(a)    : ANDERSON SOARES DOS SANTOS
MATRICULA   : 1290481923017
Data atual  : 07/08/2021  - EXERCICIO 2
EXERCICO 02 : Calcular e exibir a média aritmética de quatro valores 
              quaisquer que serão digitados.
*/

void main() {
  
   //MENSAGEM DE BOAS VINDAS AO USUÁRIO
   print("*******PROGRAMA PARA CALCULO DE MEDIA ARITMÉTICA*************\n");
  
  	//DECLARANDO VARIÁVEIS
	

     double media;    // resultado da média calculada
     double vA;       //Valor 1 utilizado no cálculo 
     double vB;       //Valor 2 utilizado no cálculo 
     double vC;       //Valor 3 utilizado no cálculo 
     double vD;       //Valor 4 utilizado no cálculo 
  
  //SOLICITANDO VALORES DAS VARIÁVEIS AO USUÁRIO
      print("\nPOR GENTILEZA, DIGITE O 1º VALOR : ");
      //cin >> vA;  
      print("Valor adotado = 10");
	    vA = 10; 
   
      print("\nPOR GENTILEZA, DIGITE O 2º VALOR : ");
      //cin >> vB;  
      print("Valor adotado = 100");
	    vB = 100; 
    
      print("\nPOR GENTILEZA, DIGITE O 3º VALOR : ");
      //cin >> vC;  
      print("Valor adotado = 20");
	    vC = 20; 
  
      print("\nPOR GENTILEZA, DIGITE O 4º VALOR : ");
      //cin >> vD;  
      print("Valor adotado = 50");
	    vD = 50; 
       
    //CALCULAR A MÉDIA ARITMÉTICA
    //FORMULA :média = (vA + vB + vC + vD)/4;
       media = (vA + vB + vC + vD)/4;
    //INFORMA O VALOR DO CALCULO REALIZADO AO USUARIO
       print("\nO VALOR DA MÉDIA ARITMÉTICA É = $media .");
    //MENSAGEM DE ENCERRAMENTO DO PROGRAMAAO USUÁRIO
       print("\nCALCULOS EXECUTADOS COM SUCESSO!!!O PROGRAMA SERÁ ENCERRADO\n");
  
  
  
}