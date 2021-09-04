/*
LISTA DE EXERCICIOS  - 07AGO2021
Disciplina  : PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS
Professor   : JOSEFFE BARROSO DE OLIVEIRA
Autor(a)    : ANDERSON SOARES DOS SANTOS
MATRICULA   : 1290481923017
Data atual  : 15/08/2021  - ESTRUTURA DE REPETIÇÃO - EXERCICIO 4
EXERCICO 04 : 4. Exibir os vinte primeiros valores da série de Bergamaschi.
               A série: 1, 1, 1, 3, 5, 9, 17, ...
*/



void main() {
 
   //MENSAGEM DE BOAS VINDAS AO USUÁRIO
   print("*******PROGRAMA PARA CALCULO DA SÉRIE DE BERGAMASCHI *************\n");
  
  	//DECLARANDO VARIÁVEIS
	   
    
     int size ; // armazena o valor da série  informado pelo usuário
     int current = 4; // utilizado para calculo da sequencia a partir do 3º termo
     int antepenultimoNr = 1; // antepenultimo termo utilizado para calculo da sequencia a partir do 3º termo
     int penultimoNr = 1; // penultimo termo utilizado para calculo da sequencia a partir do 3º termo
     int ultimoNr = 1;   // ultimo termoutilizado para calculo da sequencia a partir do 3º termo
     
  
  
  
   //SOLICITANDO VALORES DAS VARIÁVEIS AO USUÁRIO
      print("\nPOR GENTILEZA, DIGITE O TERMO DA SEQUENCIA A SER CALCULADO : ");
      //cin >>  size ;  
      print("Valor adotado = 20");
	    size = 20; 
  
          
       
    //SÉRIE DE BERGAMASCHI
    /*   A série: 1, 1, 1, 3, 5, 9, 17, ...
    
  
    */
     //ESTRUTURA DE REPETIÇÃO
 
  
     //SOMENTE 1º TERMO DA SÉRIE
     if (size == 1)
      
     {
       
         
         //CASO USUÁRIO SOLICITE 1 TERMO
         print("\n 1º TERMO DA SÉRIE DE BERGAMASCHI = 1\n");
         
       
              
         
     }
     //SOMENTE OS 2 PRIMEIROS TERMOS DA SERIE
     else  if (size == 2)
     {
         ///1º TERMO
         print("\n 1º TERMO DA SÉRIE DE BERGAMASCHI = 1\n");
         ///2º TERMO
         print("\2º TERMO DA SÉRIE DE BERGAMASCHI = 1\n");
              
     }
     //SOMENTE OS 3 PRIMEIROS TERMOS DA SERIE
     else  if (size == 3)
     {
         ///1º TERMO
         print("\n 1º TERMO DA SÉRIE DE BERGAMASCHI = 1\n");
         ///2º TERMO
         print("\2º TERMO DA SÉRIE DE BERGAMASCHI = 1\n");
         ///2º TERMO
         print("\3º TERMO DA SÉRIE DE BERGAMASCHI = 1\n");
              
     }
      //ACIMA DE 3 TERMOS 
     else  
     {
         ///1º TERMO
         print("\n 1º TERMO DA SÉRIE DE BERGAMASCHI = 1\n");
         ///2º TERMO
         print("\2º TERMO DA SÉRIE DE BERGAMASCHI = 1\n");
         ///2º TERMO
         print("\3º TERMO DA SÉRIE DE BERGAMASCHI = 1");
         // chamando a função getBergamachi()
         getBergamachi(size,antepenultimoNr, penultimoNr,ultimoNr ,current);
                 
              
     }
  
       //MENSAGEM DE ENCERRAMENTO DO PROGRAMAAO USUÁRIO
       print("\nCALCULOS EXECUTADOS COM SUCESSO!!!O PROGRAMA SERÁ ENCERRADO\n");
 
  
}

//Função chamada em recursividade quando o tamanho da sequência desejada é maior que 3
     void getBergamachi(int size,
                        int antepenultimoNr,
                        int penultimoNr,
                        int ultimoNr,
                        int current) 
        { 
          if (current <= size) 
          {
           
            int sum = (antepenultimoNr + penultimoNr) + ultimoNr;
            print("\n$current º TERMO DA SÉRIE DE BERGAMASCHI =  $sum");
           
            getBergamachi(size, penultimoNr, ultimoNr, sum, ++current);
          } 
        } 
       
