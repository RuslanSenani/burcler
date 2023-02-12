import 'package:burcler/data/strings.dart';
import 'package:burcler/models/burc.dart';
import 'package:flutter/material.dart';

class BurcListi extends StatelessWidget {
  late List<Burc> burcListi;
  BurcListi() {
    burcListi = melumatMenbeyiniHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bürclər"),
      ),
      body: Center(
        child: Text("Burcler Listi Burda Olacaq"),
      ),
    );
  }

  List<Burc> melumatMenbeyiniHazirla() {
    List<Burc> kecici = [];
    for (int i = 0; i < 12; i++) {
      var burcad = Strings.burcAdlari[i];
      var burcTarix = Strings.burcTarixleri[i];
      var burcOzellik = Strings.burcOzellikleri[i];
      var burcSekil = '${Strings.burcAdlari[i]}.jpg';

      Burc elaveEdilecekBurc = Burc(burcad, burcTarix, burcOzellik, burcSekil);
      kecici.add(elaveEdilecekBurc);
    }

    return kecici;
  }
}
