/*
LISTA DE EXERCICIOS  - 07AGO2021
Disciplina  : PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS
Professor   : JOSEFFE BARROSO DE OLIVEIRA
Autor(a)    : ANDERSON SOARES DOS SANTOS
MATRICULA   : 1290481923017
Data atual  : 15/08/2021  - ESTRUTURA DE DECISAO - EXERCICIO 5
EXERCICO 05 : 5. A partir dos valores da aceleração (a em m/s2),
                 da velocidade inicial (v0 em m/s) e do tempo de percurso
                 (t em s). 
                 Calcular e exibir a velocidade final de automóvel em km/h.
                 Exibir mensagem de acordo com a tabela:

                 
                  Velocidade em km/h(V)
                  
                  V<= 40           == VEÍCULO MUITO LENTO
                  40 < V <= 60     ==  VELOCIDADE PERMITIDA
                  60 < V <= 80     ==  VELOCIDADE DE CRUZEIRO
                  80 < V <= 120    ==  VELOCIDADE RÁPIDO
                  V > 120          ==  VELOCIDADE MUITO RÁPIDO
                  
                  Fórmula para o cálculo da velocidade em m/s: V = v0 + a. t

*/



void main() {
 
   //MENSAGEM DE BOAS VINDAS AO USUÁRIO
   print("*******PROGRAMA PARA CALCULO DE VELOCIDADE FINAL *************\n");
  
  	//DECLARANDO VARIÁVEIS
	   
     
     double v0Inicial; // velocidade inicial (v0 em m/s)
     double tempo;    // tempo de percurso(t em s). 
     double a;        //aceleração (a em m/s2),
     double vfinal;   // velocidade final em m/s 
  
  
  //SOLICITANDO VALORES DAS VARIÁVEIS AO USUÁRIO
      print("\nPOR GENTILEZA, INFORME A VELOCIDADE INICILA(V0 EM 'm/s') : ");
      //cin >> v0Inicial;  
      print("Valor adotado = 60");
	    v0Inicial = 60; 
      
      print("\nPOR GENTILEZA, DIGITE O TEMPO GASTO NO PERCURSO(VALOR EM SEGUNDOS 's') : ");
      //cin >> tempo;  
      print("Valor adotado = 10 s");
	    tempo = 10; 
   
      print("\nPOR GENTILEZA, DIGITE A ACELERAÇÃO(VALOR  'm/s²') : ");
      //cin >> a;  
      print("Valor adotado = 5 m/s²");
	    a = 5; 
        
       
    //CALCULO DA VELOCIDADE
    // Fórmula para o cálculo da velocidade em m/s: V = v0 + a. t
  
    
    //FORMULA :vfinal = v0Inicial + (tempo * a);
       vfinal = v0Inicial + (tempo * a);
    //INFORMA O VALOR DO CALCULO REALIZADO AO USUARIO
       print("\nO VALOR DA VELOCIDADE FINAL (V) É = $vfinal m/s.");
    
    //ESTRUTURA DE DECISÃO 
    // INFORMAR AO USUÁRIO A CLASSIFICAÇÃO DA VELOCIDADE FINAL
    /*         
                 Velocidade em km/h(V)
                  
                  V<= 40           == VEÍCULO MUITO LENTO
                  40 < V <= 60     ==  VELOCIDADE PERMITIDA
                  60 < V <= 80     ==  VELOCIDADE DE CRUZEIRO
                  80 < V <= 120    ==  VELOCIDADE RÁPIDO
                  V > 120          ==  VELOCIDADE MUITO RÁPIDO
    */
   
  
  
     
         //VEÍCULO MUITO LENTO
         if((vfinal < 40.01))
         {
            print("\nVEÍCULO MUITO LENTO(V = $vfinal m/s).");
           
         }
         //VELOCIDADE PERMITIDA
         else if((vfinal > 40) &&
            (vfinal < 60.01))
         {
            print("\nVEÍCULO EM VELOCIDADE PERMITIDA (V = $vfinal m/s).");
            
         }
          //VELOCIDADE DE CRUZEIRO
         else if((vfinal > 60) &&
            (vfinal < 80.01))
         {
            print("\nVEÍCULO EM VELOCIDADE DE CRUZEIRO (V = $vfinal m/s).");
            
         }
          //VELOCIDADE RÁPIDO
         else if((vfinal > 80) &&
            (vfinal < 120.01))
         {
            print("\nVEÍCULO EM VELOCIDADE RÁPIDA (V = $vfinal m/s).");
            
         }
         //VELOCIDADE MUITO RÁPIDO
         else 
         {
            print("\nVEÍCULO EM VELOCIDADE MUITO RÁPIDO (V = $vfinal m/s).");
         }
  
    
  
     
    //MENSAGEM DE ENCERRAMENTO DO PROGRAMAAO USUÁRIO
       print("\nCALCULOS EXECUTADOS COM SUCESSO!!!O PROGRAMA SERÁ ENCERRADO\n");
  
  
  
}


