import "dart:io";
import "dart:math";

void mult_decimal() {
  int numero = 1;
  int numero0 = 0;
  stdout.write("ingresa el primer numero binario ");
  int binario1 = int.parse(stdin.readLineSync()!);
  int posicion1 = 0;
  int decimal1 = 0;
  int digito1;

  stdout.write("ingresa el segundo numero binario ");
  int binario2 = int.parse(stdin.readLineSync()!);
  int posicion2 = 0;
  int decimal2 = 0;
  int digito2;
  String binario = "";

  while (binario1 > 0) {
    digito1 = binario1 % 10;
    decimal1 = decimal1 + digito1 * pow(2, posicion1).toInt();
    binario1 = binario1 ~/ 10;
    binario1 = binario1.floor();
    posicion1++;
    while (binario2 > 0) {
      digito2 = binario2 % 10;
      decimal2 = decimal2 + digito2 * pow(2, posicion2).toInt();
      binario2 = binario2 ~/ 10;
      binario2 = binario2.floor();
      posicion2++;
    }
  }

  int multDecimal = decimal1 * decimal2;
  int n = multDecimal;

  while (n > 0) {
    if (n % 2 == 0) {
      binario = numero0.toString() + binario;
      n = n ~/ 2;
      n.floor();
    } else {
      binario = numero.toString() + binario;
      n = n ~/ 2;
      n.floor();
    }
  }
  int cantidad = binario.length;
  double redondear = cantidad / 4;
  redondear = redondear.ceil().toDouble();
  redondear = redondear * 4;

  while (redondear > binario.length) {
    if (redondear > binario.length) {
      binario = numero0.toString() + binario;
    }
  }
  print("la suma de estos dos numeros binarios es $binario");
}
