
import 'dart:io';

void main()
{
  print("Informe um número inteiro positivo:");
  String? input = stdin.readLineSync();
  int? numero = (input != null)? int.tryParse(input) : null;

  if(numero != null) 
    print(soma(numero));
  else 
    print(0);
}


int soma(int valor)
{
  int retorno = 0;

  for(int i = 0; i < valor;i++)
    retorno += (i % 3 == 0 || i % 5 == 0)? i : 0;

  return retorno;
}