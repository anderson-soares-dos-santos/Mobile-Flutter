/*
LISTA DE EXERCICIOS  - 07AGO2021
Disciplina  : PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS
Professor   : JOSEFFE BARROSO DE OLIVEIRA
Autor(a)    : ANDERSON SOARES DOS SANTOS
MATRICULA   : 1290481923017
Data atual  : 15/08/2021  - ESTRUTURA DE REPETIÇÃO - EXERCICIO 5
EXERCICO 05 : 5. Calcular e exibir a soma dos “N” primeiros valores da seqüência abaixo.
                 O valor “N” será digitado, deverá ser positivo, mas menor que cem. 
                 Caso o valor não satisfaça a restrição, 
                 enviar mensagem de erro e solicitar o valor novamente.
                 A seqüência: 2, 5, 10, 17, 26, ....
*/



void main() {
 
   //MENSAGEM DE BOAS VINDAS AO USUÁRIO
   print("*******PROGRAMA PARA CALCULO DA SÉRIE DE BERGAMASCHI *************\n");
  
  	//DECLARANDO VARIÁVEIS
	   
    
     int size ; // armazena o valor da série  informado pelo usuário
     int current = 4; // utilizado para calculo da sequencia a partir do 3º termo
     int impar = 7; // antepenultimo termo utilizado para calculo da sequencia a partir do 3º termo
     int penultimoNr = 0; // penultimo termo utilizado para calculo da sequencia a partir do 3º termo
     int ultimoNr = 10;   // ultimo termoutilizado para calculo da sequencia a partir do 3º termo
     
  
  
  
   //SOLICITANDO VALORES DAS VARIÁVEIS AO USUÁRIO
      print("\nPOR GENTILEZA, DIGITE O TERMO DA SEQUENCIA A SER CALCULADO : ");
      //cin >>  size ;  
      print("Valor adotado = 20");
	    size = 20; 
  
          
       
    //SÉRIE 
    /*   A seqüência: 2, 5, 10, 17, 26, ....
     *   a sequencia esta somando numeros impares
     *   1 , 3 , 5 , 7 , 9 , 11 ...
    
  
    */
     //ESTRUTURA DE REPETIÇÃO
      //verificando se o numero é positivo e menor que 100
      if((size > 0) &&
         (size < 100))
      {
         //SOMENTE 1º TERMO DA SÉRIE
          if (size == 1)
      
         {      
         
         //CASO USUÁRIO SOLICITE 1 TERMO
         print("\n 1º TERMO DA SÉRIE  = 2\n");
         
         }
         //SOMENTE OS 2 PRIMEIROS TERMOS DA SERIE
         else  if (size == 2)
         {
         ///1º TERMO
         print("\n 1º TERMO DA SÉRIE  = 2\n");
         ///2º TERMO
         print("\2º TERMO DA SÉRIE  = 5\n");
              
         }
         //SOMENTE OS 3 PRIMEIROS TERMOS DA SERIE
         else  if (size == 3)
         {
         ///1º TERMO
         print("\n 1º TERMO DA SÉRIE  = 2\n");
         ///2º TERMO
         print("\2º TERMO DA SÉRIE  = 5\n");
         ///3º TERMO
         print("\2º TERMO DA SÉRIE  = 10\n");
              
         }
         //ACIMA DE 3 TERMOS 
         else  
         {
         
         ///1º TERMO
         print("\n 1º TERMO DA SÉRIE  = 2\n");
         ///2º TERMO
         print("\2º TERMO DA SÉRIE  = 5\n");
         ///3º TERMO
         print("\3º TERMO DA SÉRIE  = 10");
         // chamando a função getSerie()
         getSerie(size,impar, penultimoNr,ultimoNr ,current);
        
         }
  
       //MENSAGEM DE ENCERRAMENTO DO PROGRAMAAO USUÁRIO
       print("\nCALCULOS EXECUTADOS COM SUCESSO!!!O PROGRAMA SERÁ ENCERRADO\n");
      }
      else
      {
        
       //MENSAGEM DE ENCERRAMENTO DO PROGRAMAAO USUÁRIO
       print("\nVALOR INVÁLIDO!VOCÊ DEVE INSERIR UM NÚMERO POSTIVO E INFERIOR A 100"); 
        print("\nO PROGRAMA SERÁ ENCERRADO\n");  
      }
     
 
  
}

//Função chamada em recursividade quando o tamanho da sequência desejada é maior que 3
     void getSerie(int size,
                   int impar,
                   int penultimoNr,
                   int ultimoNr,
                   int current) 
        { 
          if (current <= size) 
          {
                       
            int sum = (impar + ultimoNr);
                    
            print("\n$current º TERMO DA SÉRIE =  $sum");
           
            getSerie(size, (impar+2), ultimoNr, sum, ++current);
          } 
        } 
       
