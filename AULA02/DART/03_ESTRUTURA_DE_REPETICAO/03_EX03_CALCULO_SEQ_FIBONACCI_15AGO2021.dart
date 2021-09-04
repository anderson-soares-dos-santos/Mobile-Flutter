/*
LISTA DE EXERCICIOS  - 07AGO2021
Disciplina  : PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS
Professor   : JOSEFFE BARROSO DE OLIVEIRA
Autor(a)    : ANDERSON SOARES DOS SANTOS
MATRICULA   : 1290481923017
Data atual  : 15/08/2021  - ESTRUTURA DE REPETIÇÃO - EXERCICIO 3
EXERCICO 03 : 3. Exibir os trinta primeiros valores da série de Fibonacci.
                A série: 1, 1, 2, 3, 5, 8, ...
*/



void main() {
 
   //MENSAGEM DE BOAS VINDAS AO USUÁRIO
   print("*******PROGRAMA PARA CALCULO DE SEQUENCIA DE FIBONACCI *************\n");
  
  	//DECLARANDO VARIÁVEIS
	   
    
     int size ; // armazena o valor da série  informado pelo usuário
     int current = 3; // utilizado para calculo da sequencia a partir do 3º termo
     int penultimoNr = 1; // utilizado para calculo da sequencia a partir do 3º termo
     int ultimoNr = 1;   // utilizado para calculo da sequencia a partir do 3º termo
     
  
  
  
   //SOLICITANDO VALORES DAS VARIÁVEIS AO USUÁRIO
      print("\nPOR GENTILEZA, DIGITE O TERMO DA SEQUENCIA A SER CALCULADO : ");
      //cin >>  size ;  
      print("Valor adotado = 30");
	    size = 1; 
  
          
       
    //SEQUENCIA DE FIBONACCI
    /*    A série: 1, 1, 2, 3, 5, 8, ...
  
    */
     //ESTRUTURA DE REPETIÇÃO
     // VERIFCAR SE Va  > Vb
  
     //SOMENTE 1º TERMO DA SEQUENCIA
     if (size == 1)
      
     {
       
         
         //CASO USUÁRIO SOLICITE 1 TERMO
         print("\n 1º TERMO DA SEQUENCIA DE FIBONACCI = 1\n");
         
       
              
         
     }
     //SOMENTE OS 2 PRIMEIROS TERMOS DA SEQUENCIA
     else  if (size == 2)
     {
         ///1º TERMO
         print("\n 1º TERMO DA SEQUENCIA DE FIBONACCI = 1\n");
         ///2º TERMO
         print("\2º TERMO DA SEQUENCIA DE FIBONACCI = 1\n");
              
     }
      //ACIMA DE 2 TERMOSSOMENTE OS 2 PRIMEIROS TERMOS DA SEQUENCIA
     else  
     {
         //1º TERMO
         print("\n 1º TERMO DA SEQUENCIA DE FIBONACCI = 1\n");
         ///2º TERMO
         print("\ 2º TERMO DA SEQUENCIA DE FIBONACCI = 1");
         // chamando a função getFibo()
         getFibo(size, penultimoNr,ultimoNr ,current);
                 
              
     }
 
  
}

//Função chamada em recursividade quando o tamanho da sequência desejada é maior que 2
     void getFibo(int size,
                  int penultimoNr,
                  int ultimoNr,
                  int current) 
        { 
          if (current <= size) 
          {
            int sum = penultimoNr + ultimoNr;
            print("\n $current º TERMO DA SEQUENCIA DE FIBONACCI =  $sum");
            getFibo(size, ultimoNr, sum, ++current);
          } 
        } 
       
