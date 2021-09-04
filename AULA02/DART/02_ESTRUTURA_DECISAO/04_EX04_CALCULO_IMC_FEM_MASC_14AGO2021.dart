/*
LISTA DE EXERCICIOS  - 07AGO2021
Disciplina  : PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS
Professor   : JOSEFFE BARROSO DE OLIVEIRA
Autor(a)    : ANDERSON SOARES DOS SANTOS
MATRICULA   : 1290481923017
Data atual  : 14/08/2021  - ESTRUTURA DE DECISAO - EXERCICIO 4
EXERCICO 04 : 4. Entrar com o peso,
                            o sexo e 
                            a altura de uma determinada pessoa.
                 Após a digitação, exibir se esta pessoa
                 está ou não com seu peso ideal. Fórmula: peso/altura².
                  FEMININO
                  < 19           == ABAIXO DO PESO IDEAL
                  19 <= IMC < 24 ==  PESO IDEAL
                  IMC > 24        == ACIMA DO PESO IDEAL
                  
                  MASCULINO
                  < 20            == ABAIXO DO PESO IDEAL
                  20 <= IMC < 25  ==  PESO IDEAL
                  IMC > 25        == ACIMA DO PESO IDEAL

*/


void main() {
  
   //MENSAGEM DE BOAS VINDAS AO USUÁRIO
   print("*******PROGRAMA PARA CALCULO DE PESO IDEAL *************\n");
  
  	//DECLARANDO VARIÁVEIS
	    
     int sexo; // sexo == 1(Masculino) / 2(Feminino)
     double pesoIdeal;    // resultado calculo peso ideal(IMC);
     double peso;    //base utilizada no calculo 
     double altura;   //altura utilizado no calculo usário
  
  
  //SOLICITANDO VALORES DAS VARIÁVEIS AO USUÁRIO
      print("\nPOR GENTILEZA, INFORME O SEXO (1 = MASCULINO ou 2 = FEMININO) : ");
      //cin >> peso;  
      print("Valor adotado = 2");
	    sexo = 2; 
      
      print("\nPOR GENTILEZA, DIGITE O VALOR DO SEU PESO (VALOR EM 'Kg')  : ");
      //cin >> peso;  
      print("Valor adotado = 85 Kg");
	    peso = 85; 
   
      print("\nPOR GENTILEZA, DIGITE O DA SUA ESTATURAR EM 'm') : ");
      //cin >> altura;
       print("Valor adotado = 1.75 m");
      altura = 1.75;
    
       
    //CALCULA DO IMC
    
    //FORMULA :PesoIdeal = (base*altura);
       pesoIdeal = (peso/(altura * altura));
    //INFORMA O VALOR DO CALCULO REALIZADO AO USUARIO
       print("\nO VALOR DO SEU IMC É = $pesoIdeal.");
    
    //ESTRUTURA DE DECISÃO 
    // INFORMAR AO USUÁRIO SE O ESTÁ COM O PESO IDEAL
    /*         
     FEMININO
                  < 19           == ABAIXO DO PESO IDEAL
                  19 <= IMC < 24 ==  PESO IDEAL
                  IMC > 24        == ACIMA DO PESO IDEAL
                  
                  MASCULINO
                  < 20            == ABAIXO DO PESO IDEAL
                  20 <= IMC < 25  ==  PESO IDEAL
                  IMC > 25        == ACIMA DO PESO IDEAL
    */
  
     // PRIMEIRO VERIFICAR SE É FEMININO OU MASCULINO 
     // UTILIZAR "EQUALS" PAR AO TESTE LOGICO COM STRING
     //EXEMPLO if(nome.equals("Manuel") || nome.equals("Joao"))
  
  
     if(sexo == 2)
     {
         //ABAIXO DO PESO IDEAL
         if((pesoIdeal < 19))
         {
            print("\nVOCÊ ESTÁ ABAIXO DO PESO IDEAL(IMC = $pesoIdeal / SEXO : FEMININO).");
            print("\PESO IDEAL =  IMC ENTRE 19 E 24.");
         }
         //PESO IDEAL
         else if((pesoIdeal > 19) &&
            (pesoIdeal < 24.01))
         {
            print("\nVOCÊ ESTÁ DENTRO DO SEU PESO IDEAL(IMC = $pesoIdeal / SEXO : FEMININO).");
            print("\PESO IDEAL =  IMC ENTRE 19 E 24.");
         }
         //ACIMA DO PESO IDEAL
         else 
         {
            print("\nVOCÊ ESTÁ ACIMA DO SEU PESO IDEAL(IMC = $pesoIdeal / SEXO : FEMININO).");
            print("\PESO IDEAL =  IMC ENTRE 19 E 24.");
         }
  
     }
     //SEXO MASCULINO
     else
      {
         //ABAIXO DO PESO IDEAL
         if((pesoIdeal < 20))
         {
            print("\nVOCÊ ESTÁ ABAIXO DO PESO IDEAL(IMC = $pesoIdeal / SEXO : NASCULINO ).");
            print("\PESO IDEAL =  IMC ENTRE 20 E 25.");
         }
         //PESO IDEAL
         else if((pesoIdeal > 20) &&
            (pesoIdeal < 25.01))
         {
            print("\nVOCÊ ESTÁ DENTRO DO SEU PESO IDEAL(IMC = $pesoIdeal / SEXO : MASCULINO ).");
            print("\PESO IDEAL =  IMC ENTRE 20 E 25.");
         }
         //ACIMA DO PESO IDEAL
         else 
         {
            print("\nVOCÊ ESTÁ ACIMA DO SEU PESO IDEAL(IMC = $pesoIdeal / SEXO : MASCULINO ).");
            print("\PESO IDEAL =  IMC ENTRE 20 E 25.");
         }
  
     }    
  
     
    //MENSAGEM DE ENCERRAMENTO DO PROGRAMAAO USUÁRIO
       print("\nCALCULOS EXECUTADOS COM SUCESSO!!!O PROGRAMA SERÁ ENCERRADO\n");
  
  
  
}


