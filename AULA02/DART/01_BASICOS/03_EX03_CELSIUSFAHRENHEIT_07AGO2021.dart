/*
LISTA DE EXERCICIOS  - 07AGO2021
Disciplina  : PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS
Professor   : JOSEFFE BARROSO DE OLIVEIRA
Autor(a)    : ANDERSON SOARES DOS SANTOS
MATRICULA   : 1290481923017
Data atual  : 07/08/2021  - EXERCICIO 3
EXERCICO 03 : Entrar via teclado com o valor de uma temperatura em graus Celsius,
              calcular e exibir sua temperatura equivalente em Fahrenheit.
*/

void main() {
  
   //MENSAGEM DE BOAS VINDAS AO USUÁRIO
   print("*******PROGRAMA PARA CONVERSÃO DE TEMPERATURA DE ºC(CELSIUS) PARA ºF(FAHRENHEIT)*************\n");
  
  	//DECLARANDO VARIÁVEIS
	
     double TempF; // temperatura Fahrenheit
     double KFatorFahrenheit =5/9; // constante fator Fahrenheit;
     double TempC ;// temperatura em Celsius
  
  
  //SOLICITANDO VALORES DAS VARIÁVEIS AO USUÁRIO
      print("\nPOR GENTILEZA, DIGITE A TEMPERATURA (EM GRAUS CELSIUS ºC)1º VALOR : ");
      //cin >> TempC;  
      print("Valor adotado = 10 ºC");
	    TempC = 10; 
   
      
       
    //CONVERTER A TEMPERATURA DE ºC  PARA ºF 
    // FÓRMULA : Fahrenheit = (Celsius * 9/5) + 32;
    //           TempF =  (TempC * KFatorFahrenheit) + 32; 
       TempF =  (TempC * KFatorFahrenheit) + 32; 
    //INFORMA O VALOR DO CALCULO REALIZADO AO USUARIO
       print("\nA CONVERSÃO DE $TempC ºC É = $TempF ºF.");
    //MENSAGEM DE ENCERRAMENTO DO PROGRAMAAO USUÁRIO
       print("\nCALCULOS EXECUTADOS COM SUCESSO!!!O PROGRAMA SERÁ ENCERRADO\n");
  
  
  
}