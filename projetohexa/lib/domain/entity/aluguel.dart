class Aluguel {
  int tempoAluguel;
  double precoMinuto;

  double valorPagar;

  Aluguel(this.tempoAluguel, this.precoMinuto, this.valorPagar);

  void calcularValorPagar() {
    valorPagar =  tempoAluguel * precoMinuto;
  }
}
