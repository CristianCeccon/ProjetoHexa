class Aluguel {
  int tempoMinimo;
  int tempoAluguel;
  int tempoMaximo;

  double precoMinuto;

  double valorPagar;

  Aluguel(this.tempoMinimo, this.tempoAluguel, this.tempoMaximo, this.precoMinuto, this.valorPagar);

  double calcularValorPagar() {
    if (tempoMinimo > tempoAluguel) {
      return tempoMinimo * precoMinuto;
    } else if (tempoAluguel > tempoMaximo) {
      return (tempoMaximo * precoMinuto) + ((tempoAluguel - tempoMaximo) * (precoMinuto * 5));
    } else {
      return tempoAluguel * precoMinuto;
    }
  }
}
