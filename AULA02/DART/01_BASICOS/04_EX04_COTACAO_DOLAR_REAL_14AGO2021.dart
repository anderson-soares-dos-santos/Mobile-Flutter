/*
LISTA DE EXERCICIOS  - 07AGO2021
Disciplina  : PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS
Professor   : JOSEFFE BARROSO DE OLIVEIRA
Autor(a)    : ANDERSON SOARES DOS SANTOS
MATRICULA   : 1290481923017
Data atual  : 14/08/2021  - EXERCICIO 4
EXERCICO 04 : 4. Entrar via teclado com o valor da cotação do dólar
                 e uma certa quantidade de dólares. 
                 Calcular e exibir o valor correspondente em Reais (R$).
*/

void main() {
  
   //MENSAGEM DE BOAS VINDAS AO USUÁRIO
   print("*******PROGRAMA PARA COTAÇÃO DOLAR(US\$) PARA REAL (R\$)*************\n");
  
    //DECLARANDO VARIÁVEIS
	
     double CotacaoDolar; // valor da cotação do dólar em reais(R$)
     double QuantiaDolar; // quantidade de dólar a ser cotado;
     double QuantiaReal ;// quantidade de reais calculado;
  
  
  //SOLICITANDO VALORES DAS VARIÁVEIS AO USUÁRIO
      print("\nPOR GENTILEZA, DIGITE A QUANTIA EM DÓLAR(US\$) QUE DESEJA COTAR : ");
      //cin >> QuantiaDolar;  
      print("Valor adotado(US\$) = 250,00");
	    QuantiaDolar = 250.00; 
      print("\nPOR GENTILEZA, DIGITE O VALOR ATUAL DA COTAÇÃO DO DÓLAR(US\$) EM REAIS(R\$) : ");
      //cin >> CotacaoDolar;  
      print("Valor adotado(R\$) = 5,45");
	    CotacaoDolar = 5.45; 
        
       
    // CALCULAR A COTAÇÃO DE DOLAR(US$) PARA REAL(R$) 
    // FÓRMULA : QuantiaDolar * CotacaoDolar = QuantiaReal;
    //           QuantiaDolar * CotacaoDolar = QuantiaReal; 
       QuantiaReal =  QuantiaDolar * CotacaoDolar; 


    //INFORMA O VALOR DO CALCULO REALIZADO AO USUARIO
       print("\nO valor de US\$ $QuantiaDolar é cotado a R\$ $QuantiaReal.");
    //MENSAGEM DE ENCERRAMENTO DO PROGRAMA AO USUÁRIO
       print("\nCALCULOS EXECUTADOS COM SUCESSO!!!O PROGRAMA SERÁ ENCERRADO\n");
  
  
  
}