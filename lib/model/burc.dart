class Burc {
  final String _burcAdi;
  final String _burcTarixi;
  final String _burcMelumati;
  final String _burcBalacaShekli;
  final String _burcBoyukShekli;

  get burcAdi => this._burcAdi;
  get burcTarixi => this._burcTarixi;
  get burcMelumati => this._burcMelumati;
  get burcBalacaShekli => this._burcBalacaShekli;
  get burcBoyukShekli => this._burcBoyukShekli;

  Burc(this._burcAdi, this._burcTarixi, this._burcMelumati,
      this._burcBalacaShekli, this._burcBoyukShekli);
  @override
  String toString() {
    // TODO: implement toString
    return "$_burcAdi, $_burcTarixi";
  }
}
