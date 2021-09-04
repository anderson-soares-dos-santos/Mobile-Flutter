/*
LISTA DE EXERCICIOS  - 07AGO2021
Disciplina  : PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS
Professor   : JOSEFFE BARROSO DE OLIVEIRA
Autor(a)    : ANDERSON SOARES DOS SANTOS
MATRICULA   : 1290481923017
Data atual  : 15/08/2021  - ESTRUTURA DE REPETIÇÃO - EXERCICIO 2
EXERCICO 02 : 2. Entrar via teclado com um valor (X) qualquer.
             Digitar o intervalo que o programa que deverá 
             calcular a tabuada do valor X digitado,
             sendo que o segundo valor (B), deverá ser maior que o primeiro (A).
             Exibir a tabuada do valor digitado,
             no intervalo decrescente, ou seja, 
             a tabuada de X no intervalo de B para A.
*/



void main() {
 
   //MENSAGEM DE BOAS VINDAS AO USUÁRIO
   print("*******PROGRAMA PARA CALCULO DE TABUADA X *************\n");
  
  	//DECLARANDO VARIÁVEIS
	   
     
     int vTabauada; // valor da tabuada a ser calculada
     int cTabauada; // Calculo da tabuada 
     int vAIntervalo; // Valor A
     int vBIntervalo; // Valor B
  
  
  
   //SOLICITANDO VALORES DAS VARIÁVEIS AO USUÁRIO
      print("\nPOR GENTILEZA, INFORME O VALOR PARA O CÁLCULO DA TABUADA : ");
      //cin >>  vTabauada;  
      print("Valor adotado = 5");
	    vTabauada = 5; 
  
     print("\nPOR GENTILEZA, INFORME O 1º VALOR/INTERVALO(A) PARA CÁLCULO DA TABUADA : ");
      //cin >> vAIntervalo;  
      print("Valor adotado = 5");
	    vAIntervalo = 5; 
  
      print("\nPOR GENTILEZA, INFORME O 2º VALOR/INTERVALO(B) PARA CÁLCULO DA TABUADA : ");
      //cin >> vBIntervalo;  
      print("Valor adotado = 10");
	    vBIntervalo = 10; 
      
       
       
    //CALCULO DA TABUADA
    /*    PARA vTabauada = 5:
           5 x vBIntervalo = vBIntervalo x 5
            ...
            ...
           5 x vAIntervalo = vAIntervalo x 5
  
    */
     //ESTRUTURA DE REPETIÇÃO
     // VERIFCAR SE Va  > Vb
  
     if (vAIntervalo <  vBIntervalo)
      
     {
       
         //IMPRIMIR A TUABUADA AO USUÁRIO
         print("\nTABUADA DO $vTabauada\n");
        // for par calcular a tabuada
       for (int i = vBIntervalo; i > (vAIntervalo - 1); i--) 
       {
           cTabauada = i * vTabauada;
           print("$vTabauada x $i  = $cTabauada");
       }  
       
         
     }
     else
     {
       //MENSAGEM ORIENTATIVA AO USUARIO QUANTO AOS VALORES DIGITADOS
       print("\n $vAIntervalo É MAIOR QUE $vAIntervalo.");
       //MENSAGEM DE ENCERRAMENTO DO PROGRAMA AO USUÁRIO
       print("\nCALCULOS NÃO PODEM SER EXECUTADOS!!!O PROGRAMA SERÁ ENCERRADO\n");
              
     }
    
  
     
  
  
  
  
}


