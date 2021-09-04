/*
LISTA DE EXERCICIOS  - 07AGO2021
Disciplina  : PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS
Professor   : JOSEFFE BARROSO DE OLIVEIRA
Autor(a)    : ANDERSON SOARES DOS SANTOS
MATRICULA   : 1290481923017
Data atual  : 15/08/2021  - ESTRUTURA DE REPETIÇÃO - EXERCICIO 1
EXERCICO 05 : 1. Entrar via teclado com um valor qualquer. 
                Após a digitação, exibir a tabuada do valor solicitado,
                no intervalo de um a dez.

*/



void main() {
 
   //MENSAGEM DE BOAS VINDAS AO USUÁRIO
   print("*******PROGRAMA PARA CALCULO DE TABUADA *************\n");
  
  	//DECLARANDO VARIÁVEIS
	   
     
     int vTabauada; // valor da tabuada a ser calculada
     int cTabauada; // Calculo da tabuada 
  
  
   //SOLICITANDO VALORES DAS VARIÁVEIS AO USUÁRIO
      print("\nPOR GENTILEZA, INFORME O VALOR PARA O CÁLCULO DA TABUADA : ");
      //cin >>  vTabauada;  
      print("Valor adotado = 5");
	    vTabauada = 5; 
      
       
       
    //CALCULO DA TABUADA
    /*    PARA vTabauada = 5:
           5 x 1 = 5
           5 x 2 = 10
           5 x 3 = 15
            ...
           5 x 10 = 50  
  
    */
     //ESTRUTURA DE REPETIÇÃO
     //IMPRIMIR A TUABUADA AO USUÁRIO
     print("\nTABUADA DO $vTabauada\n");
    // for par calcular a tabuada
    for (int i = 1; i < 11; i++) {
        cTabauada = i * vTabauada;
        print("$vTabauada x $i  = $cTabauada");
    }   
  
     
    //MENSAGEM DE ENCERRAMENTO DO PROGRAMAAO USUÁRIO
       print("\nCALCULOS EXECUTADOS COM SUCESSO!!!O PROGRAMA SERÁ ENCERRADO\n");
  
  
  
}


