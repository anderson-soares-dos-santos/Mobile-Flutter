/*
LISTA DE EXERCICIOS  - 07AGO2021
Disciplina  : PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS
Professor   : JOSEFFE BARROSO DE OLIVEIRA
Autor(a)    : ANDERSON SOARES DOS SANTOS
MATRICULA   : 1290481923017
Data atual  : 14/08/2021  - ESTRUTURA DE DECISAO - EXERCICIO 1
EXERCICO 01 : 1. Calcular e exibir a área de um retângulo,
                a partir dos valores da base e altura que serão digitados. 
                Se a área for maior que 100, 
                exibir a mensagem “Terreno grande”,
                caso contrário, exibir a mensagem “Terreno pequeno”.

*/


void main() {
  
   //MENSAGEM DE BOAS VINDAS AO USUÁRIO
   print("*******PROGRAMA PARA CALCULO DE AREA DE UM RETÂNGULO*************\n");
  
  	//DECLARANDO VARIÁVEIS
	
    // double bas1;    //base inserida pelo usuário
    // double alt1;   //altura inserida pelo usário
     double area;    // resultado da area
     double base;    //base utilizada no calculo 
     double altura;   //altura utilizado no calculo usário
  
  
  //SOLICITANDO VALORES DAS VARIÁVEIS AO USUÁRIO
      print("\nPOR GENTILEZA, DIGITE O VALOR DO 1º LADO(BASE) DO RETâNGULO (VALOR EM 'm')  : ");
      //cin >> base;  
      print("Valor adotado = 10m");
	    base = 10; 
   
      print("\nPOR GENTILEZA, DIGITE O VALOR 2º LADO(BASE) DO RETâNGULO(VALOR EM 'm') : ");
      //cin >> altura;
       print("Valor adotado = 50cm");
      altura = 50;
    
       
    //CALCULA A ÁREA DO RETÂNGULO
    //FORMULA :area = (base*altura);
       area = (base*altura);
    //INFORMA O VALOR DO CALCULO REALIZADO AO USUARIO
       print("\nO VALOR DA ÁREA DO RETÂNGULO É = $area  m² .");
    
    //ESTRUTURA DE DECISÃO 
    // INFORMAR AO USUÁRIO SE O TERRENO É GRANDE OU PEQUENO
  
    if(area > 100)
    {
      print("\nO TERRENO É GRANDE(= $area  m² ).");
    }
    else
    {
      print("\nO TERRENO É PEQUENO(= $area  m² ).");
    }
  
  
    //MENSAGEM DE ENCERRAMENTO DO PROGRAMAAO USUÁRIO
       print("\nCALCULOS EXECUTADOS COM SUCESSO!!!O PROGRAMA SERÁ ENCERRADO\n");
  
  
  
}


