class Burc {
  final String _burcAdi;
  final String _burcTarixi;
  final String _burcMelumati;
  final String _burcBalacaShekli;
  final String _burcBoyukShekli;

  Burc(this._burcAdi, this._burcTarixi, this._burcMelumati, this._burcBalacaShekli, this._burcBoyukShekli);
  @override
  String toString() {
    // TODO: implement toString
    return "$_burcAdi, $_burcTarixi";
  }
}