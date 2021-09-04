/*
LISTA DE EXERCICIOS  - 07AGO2021
Disciplina  : PROGRAMAÇÃO PARA DISPOSITIVOS MÓVEIS
Professor   : JOSEFFE BARROSO DE OLIVEIRA
Autor(a)    : ANDERSON SOARES DOS SANTOS
MATRICULA   : 1290481923017
Data atual  : 14/08/2021  - ESTRUTURA DE DECISAO - EXERCICIO 3
EXERCICO 03 : 3. A partir de três valores que serão digitados,
                verificar se formam ou não um triângulo. 
                Em caso positivo, 
                exibir sua classificação: “Isósceles, escaleno ou eqüilátero”.
                Um triângulo escaleno possui todos os lados diferentes,
                o isósceles, dois lados iguais e o eqüilátero, todos os lados iguais. Para existir triângulo é necessário que a soma de dois lados quaisquer seja maior que o outro, isto, para os três lados

*/


void main() {
  
   //MENSAGEM DE BOAS VINDAS AO USUÁRIO
   print("*******PROGRAMA PARA CALCULO PARA CLASSIFICAÇÃO DE TRIâNGULO*************\n");
  
  	//DECLARANDO VARIÁVEIS
	
   
     double baseTriangulo;    // base do trinagulo;
     double hipotenusaTriangulo;    //hipotenusa do trinagulo
     double alturaTriangulo;   //altura do trinagulo
  
  
  //SOLICITANDO VALORES DAS VARIÁVEIS AO USUÁRIO
      print("\nPOR GENTILEZA, DIGITE O VALOR DA BASE DO TRIâNGULO (VALOR EM 'cm')  : ");
      //cin >> baseTriangulo;  
      print("Valor adotado = 60 cm");
	    baseTriangulo = 60; 
   
      print("\nPOR GENTILEZA, DIGITE O VALOR DA ALTURA DO TRIâNGULO (VALOR EM 'cm') : ");
      //cin >> alturaTriangulo;
       print("Valor adotado = 40 cm");
      alturaTriangulo = 40;
  
     print("\nPOR GENTILEZA, DIGITE O VALOR DA HIPOTENUSA DO TRIâNGULO (VALOR EM 'cm') : ");
      //cin >> hipotenusaTriangulo;
       print("Valor adotado = 30 cm");
      hipotenusaTriangulo = 30;
    
      
    //ESTRUTURA DE DECISÃO 
    // INFORMAR AO USUÁRIO O TIPO DE TRIANGULO
    //CLASSIFICAÇÃO  DOS TRIANGULOS
    // ESCALENO = 2 LADOS DIFERENTES
    // EQUILÁTERO = TODOS OS  LADOS IGUAIS
    // ISOSCELES  = 2 LADOS IGUAIS
  
    // VERIFICAR SE REALMENTE É UM TRIANGULO
    
    if( ((baseTriangulo       + hipotenusaTriangulo)  > alturaTriangulo)      &&
        ((baseTriangulo       + alturaTriangulo)      > hipotenusaTriangulo)  &&
        ((hipotenusaTriangulo + alturaTriangulo)      > baseTriangulo)
      )
    {
      
      if((baseTriangulo != hipotenusaTriangulo) &&
         (baseTriangulo != alturaTriangulo))
      {
        
        print("\n É UM TRIANGULO ESCALENO.");
        
      }
      else if((baseTriangulo == hipotenusaTriangulo) &&
              (baseTriangulo == alturaTriangulo))
      {
        
        print("\n É UM TRIANGULO EQUILÁTERO.");
        
      }
      else
      {
        print("\n É UM TRIANGULO ISÓSCELES.");
      }
     
    }
    else
    {
      print("\nNÃO É UM TRINAGULO.");
     
    }
         
      
   
  
    //MENSAGEM DE ENCERRAMENTO DO PROGRAMAAO USUÁRIO
       print("\nCALCULOS EXECUTADOS COM SUCESSO!!!O PROGRAMA SERÁ ENCERRADO\n");
  
  
  
}


