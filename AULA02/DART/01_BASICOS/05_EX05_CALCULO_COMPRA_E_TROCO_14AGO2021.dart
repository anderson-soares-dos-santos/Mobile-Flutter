/*
LISTA DE EXERCICIOS  - 07AGO2021
Disciplina  : PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS
Professor   : JOSEFFE BARROSO DE OLIVEIRA
Autor(a)    : ANDERSON SOARES DOS SANTOS
MATRICULA   : 1290481923017
Data atual  : 14/08/2021  - EXERCICIO 5
EXERCICO 05 : 5. Entrar via teclado com o valor de cinco produtos.
                 Após as entradas, digitar um valor referente ao
                 pagamento da somatória destes valores.
                 Calcular e exibir o troco que deverá ser devolvido.

*/

void main() {
  
   //MENSAGEM DE BOAS VINDAS AO USUÁRIO
   print("*******PROGRAMA PARA SOMATÓRIA DE PRODUTOS*************\n");
  
    //DECLARANDO VARIÁVEIS
	
     double VProduto01; // valor do produto 1(R$);
     double VProduto02; // valor do produto 2(R$);
     double VProduto03; // valor do produto 3(R$);
     double VProduto04; // valor do produto 4(R$);
     double VProduto05; // valor do produto 5(R$);
  
     String Produto01; //  produto 1;
     String Produto02; //  produto 2;
     String Produto03; //  produto 3;
     String Produto04; //  produto 4;
     String Produto05; //  produto 5;
     
  
     double VTotalProdutos; // Valor total(soma) dos produtos(R$);
     double VPagamento ;// Valor pago pelo usuário(R$);
     double VTrocoPagamento ;// Valor do troco(R$);
  
  
  //SOLICITANDO VALORES DAS VARIÁVEIS AO USUÁRIO
      print("\nPOR GENTILEZA, DIGITE O PRODUTO QUE DESEJA ADQUIRIR : ");
      //cin >> Produto01;  
      print("Valor adotado(PIZZA) = 35.00");
	    VProduto01 = 35.00; 
       print("\nPOR GENTILEZA, DIGITE O 2º PRODUTO QUE DESEJA ADQUIRIR : ");
      //cin >> Produto02;  
      print("Valor adotado(AZEITE) = 22.00");
	    VProduto02 = 22.00; 
       print("\nPOR GENTILEZA, DIGITE O 3º PRODUTO QUE DESEJA ADQUIRIR : ");
      //cin >> Produto03;  
      print("Valor adotado(VINHO) = 49.99");
	    VProduto03 = 49.99; 
      print("\nPOR GENTILEZA, DIGITE O 4º PRODUTO QUE DESEJA ADQUIRIR : ");
      //cin >> Produto04;  
      print("Valor adotado(CERVEJA) = 3.99");
	    VProduto04 = 3.99; 
       print("\nPOR GENTILEZA, DIGITE O 5º PRODUTO QUE DESEJA ADQUIRIR : ");
      //cin >> Produto05;  
      print("Valor adotado(PUDIM) = 25.49");
	    VProduto05 = 25.49; 
  
  
    // CALCULAR O VALOR TOTAL DA COMPRA(R$) 
    // FÓRMULA : SOMA DE TODOS OS PRODUTOS;
    //           
       VTotalProdutos =  VProduto01 + VProduto02 + VProduto03 + VProduto04 + VProduto05 ; 


    //INFORMA O VALOR DO CALCULO/VALOR TOTAL DA COMPRA AO USUARIO
      print("\nO VALOR TOTAL DE COMPRA É R\$ $VTotalProdutos .");
  
  
      print("\nPOR GENTILEZA, DIGITE O VALOR PAGO(R\$) : ");
      //cin >> VPagamento;  
      print("Valor adotado(R\$) = 200,00");
	    VPagamento = 200.00; 
        
    // CALCULAR O TROCO(R$) 
    // FÓRMULA : VALORPAGO - VALOR TOTAL DAS COMPRAS = TROCO;
    //           
       VTrocoPagamento =  VPagamento -  VTotalProdutos ; 


    //INFORMA O VALOR DO CALCULO/VALOR TOTAL DA COMPRA AO USUARIO
      print("\nOBRIGADO PELO PAGAMENTO.O VALOR DO SEU TROCO É R\$ $VTrocoPagamento .");
   
    //MENSAGEM DE ENCERRAMENTO DO PROGRAMA AO USUÁRIO
       print("\nCALCULOS EXECUTADOS COM SUCESSO!!!O PROGRAMA SERÁ ENCERRADO\n");
  
  
  
}