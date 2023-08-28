import 'dart:io';
import 'dart:math';

int tirarDado() {
  var random = Random();
  return random.nextInt(6) + 1;
}

void imprimirTiros(int dado1, int dado2, int total) {
  print("Primer dado: $dado1");
  sleep(new Duration(seconds: 1));
  print("Segundo dado: $dado2");
  sleep(new Duration(seconds: 1));
  print("Total: $total\n");
  sleep(new Duration(seconds: 1));
}

void jugarCraps() {
  int dado1 = tirarDado();
  int dado2 = tirarDado();
  int tiroInicial = dado1 + dado2;

  print("""
\n------------------------------------------
------------ JUGUEMOS CRAPS! -------------
------------------------------------------\n
""");

  imprimirTiros(dado1, dado2, tiroInicial);

  if (tiroInicial == 7 || tiroInicial == 11) {
    return print("Felicitaciones! Usted ganó!\n");
  } else if (tiroInicial == 2 || tiroInicial == 3 || tiroInicial == 12) {
    return print("Qué mala suerte... Usted perdió.\n");
  }

  sleep(new Duration(seconds: 1));
  print("SIGUIENTE RONDA...\n");

  dado1 = tirarDado();
  dado2 = tirarDado();
  int total = dado1 + dado2;

  print("Recuerde, su punto es $tiroInicial...");
  sleep(new Duration(seconds: 1));
  imprimirTiros(dado1, dado2, total);

  while (total != 7) {
    if (total == tiroInicial)
      return print("Felicitaciones! Usted ganó!");
    else {
      dado1 = tirarDado();
      dado2 = tirarDado();
      total = dado1 + dado2;
      print("Recuerde, su punto es $tiroInicial\n");
      sleep(new Duration(seconds: 1));
      imprimirTiros(dado1, dado2, total);
    }
  }
  return print("Qué mala suerte... Usted perdió. Sacó un 7.\n");
}

void main() {
  jugarCraps();
}
