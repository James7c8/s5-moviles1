void imprimirPrimos(int n) {
  int countPrimos = 0;
  int countTotal = 2;

  while (countPrimos < n) {
    bool isPrimo = true;

    for (int i = 2; i < (countTotal / 2) + 1; i++) {
      if (countTotal % i == 0) isPrimo = false;
    }

    if (isPrimo) {
      print(countTotal);
      countPrimos++;
    }
    countTotal++;
  }
}

void main() {
  imprimirPrimos(20);
}
