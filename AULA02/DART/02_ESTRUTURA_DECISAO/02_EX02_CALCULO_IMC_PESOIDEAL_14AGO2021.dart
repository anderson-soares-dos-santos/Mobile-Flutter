/*
LISTA DE EXERCICIOS  - 07AGO2021
Disciplina  : PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS
Professor   : JOSEFFE BARROSO DE OLIVEIRA
Autor(a)    : ANDERSON SOARES DOS SANTOS
MATRICULA   : 1290481923017
Data atual  : 14/08/2021  - ESTRUTURA DE DECISAO - EXERCICIO 2
EXERCICO 02 : 2. Entrar com o peso e a altura de uma determinada pessoa.
                Após a digitação, 
                exibir se esta pessoa está ou não com seu peso ideal.
                Fórmula: peso/altura².

*/


void main() {
  
   //MENSAGEM DE BOAS VINDAS AO USUÁRIO
   print("*******PROGRAMA PARA CALCULO DE PESO IDEAL*************\n");
  
  	//DECLARANDO VARIÁVEIS
	
    // double bas1;    //base inserida pelo usuário
    // double alt1;   //altura inserida pelo usário
     double pesoIdeal;    // resultado calculo peso ideal(IMC);
     double peso;    //base utilizada no calculo 
     double altura;   //altura utilizado no calculo usário
  
  
  //SOLICITANDO VALORES DAS VARIÁVEIS AO USUÁRIO
      print("\nPOR GENTILEZA, DIGITE O VALOR DO SEU PESO (VALOR EM 'Kg')  : ");
      //cin >> peso;  
      print("Valor adotado = 85 Kg");
	    peso = 85; 
   
      print("\nPOR GENTILEZA, DIGITE O DA SUA ESTATURAR EM 'm') : ");
      //cin >> altura;
       print("Valor adotado = 1.75 m");
      altura = 1.75;
    
       
    //CALCULA DO IMC
    // PESO IDEAL IMC ENTRE 20 E 25
    //FORMULA :PesoIdeal = (base*altura);
       pesoIdeal = (peso/(altura * altura));
    //INFORMA O VALOR DO CALCULO REALIZADO AO USUARIO
       print("\nO VALOR DO SEU IMC É = $pesoIdeal   .");
    
    //ESTRUTURA DE DECISÃO 
    // INFORMAR AO USUÁRIO SE O ESTÁ COM O PESO IDEAL
    // PESO IDEAL IMC ENTRE 20 E 25
  
    if((pesoIdeal > 25) ||
       (pesoIdeal < 20))
    {
      print("\nVOCÊ NÃO ESTÁ DENTRO DO SEU PESO IDEAL(= $pesoIdeal ).");
      print("\PESO IDEAL =  IMC ENTRE 20 E 25.");
    }
    else
    {
      print("\nVOCÊ ESTÁ DENTRO DO SEU PESO IDEAL(= $pesoIdeal ).");
      print("\PESO IDEAL =  IMC ENTRE 20 E 25.");
    }
  
  
    //MENSAGEM DE ENCERRAMENTO DO PROGRAMAAO USUÁRIO
       print("\nCALCULOS EXECUTADOS COM SUCESSO!!!O PROGRAMA SERÁ ENCERRADO\n");
  
  
  
}


