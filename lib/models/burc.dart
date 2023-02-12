class Burc {
  final String _burcAdi;
  final String _burcTarixi;
  final String _burcDetali;
  final String _burcSekili;

  get burcAdi => this._burcAdi;
  get burcTarixi => this._burcTarixi;
  get burcDetali => this._burcDetali;
  get burcSekili => this._burcSekili;

  Burc(this._burcAdi, this._burcTarixi, this._burcDetali, this._burcSekili);
  @override
  String toString() {
    return '$_burcAdi - $_burcSekili';
  }
}
