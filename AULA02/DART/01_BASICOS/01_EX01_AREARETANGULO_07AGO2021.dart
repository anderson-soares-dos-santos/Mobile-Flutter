/*
LISTA DE EXERCICIOS  - 07AGO2021
Disciplina  : PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS
Professor   : JOSEFFE BARROSO DE OLIVEIRA
Autor(a)    : ANDERSON SOARES DOS SANTOS
MATRICULA   : 1290481923017
Data atual  : 07/08/2021  - EXERCICIO 1
EXERCICO 01 - 1. Entrar via teclado com a base e a altura de um retângulo,
                 calcular e exibir sua área.

*/

void main() {
  
   //MENSAGEM DE BOAS VINDAS AO USUÁRIO
   print("*******PROGRAMA PARA CALCULO DE AREA DE UM RETANGULO*************\n");
  
  	//DECLARANDO VARIÁVEIS
	
    // double bas1;    //base inserida pelo usuário
    // double alt1;   //altura inserida pelo usário
     double area;    // resultado da area
     double base;    //base utilizada no calculo 
     double altura;   //altura utilizado no calculo usário
  
  
  //SOLICITANDO VALORES DAS VARIÁVEIS AO USUÁRIO
      print("\nPOR GENTILEZA, DIGITE O VALOR DA BASE DO RETANGULO (VALOR EM 'cm')  : ");
      //cin >> base;  
      print("Valor adotado = 10cm");
	    base = 10; 
   
      print("\nPOR GENTILEZA, DIGITE O VALOR DA ALTURA DO RETANGULO(VALOR EM 'cm') : ");
      //cin >> altura;
       print("Valor adotado = 50cm");
      altura = 50;
    
       
    //CALCULA A ÁREA DO RETANGULO
    //FORMULA :area = (base*altura);
       area = (base*altura);
    //INFORMA O VALOR DO CALCULO REALIZADO AO USUARIO
       print("\nO VALOR DA ÁREA DO RETANGULO É = $area  cm² .");
    //MENSAGEM DE ENCERRAMENTO DO PROGRAMAAO USUÁRIO
       print("\nCALCULOS EXECUTADOS COM SUCESSO!!!O PROGRAMA SERÁ ENCERRADO\n");
  
  
  
}
