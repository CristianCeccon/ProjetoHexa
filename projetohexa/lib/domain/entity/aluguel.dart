class Aluguel {
  int tempoMinimo;
  int tempoAluguel;
  int tempoMaximo;

  double precoMinuto;

  double valorPagar;

  Aluguel(this.tempoMinimo, this.tempoAluguel, this.tempoMaximo, this.precoMinuto, this.valorPagar);

  void calcularValorPagar() {
    if (tempoMinimo > tempoAluguel) {
      valorPagar = tempoMinimo * precoMinuto;
    } 
    else if (tempoAluguel > tempoMaximo) {
      valorPagar = (tempoMaximo * precoMinuto) + ((tempoAluguel - tempoMaximo) * (precoMinuto * 5));
    } 
    else {
      valorPagar =  tempoAluguel * precoMinuto;
    }
  }
}
