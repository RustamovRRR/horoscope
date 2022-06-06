import 'package:flutter/material.dart';
import 'package:horoscope/burc_item.dart';
import 'package:horoscope/data/strings.dart';
import 'package:horoscope/model/burc.dart';

class BurcListi extends StatelessWidget {
  late List<Burc> butunBurcler;
  BurcListi() {
    butunBurcler = verilenlerBazasiHazirla();
    print(butunBurcler);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burcler Listi"),
      ),
      body: Center(
        child: ListView.builder(
            itemBuilder: (context, index) {
              return BurcItem(listelenenBurc: butunBurcler[index]);
            },
            itemCount: butunBurcler.length),
      ),
    );
  }

  List<Burc> verilenlerBazasiHazirla() {
    List<Burc> muveqqeti = [];
    for (var i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarixi = Strings.BURC_TARIHLERI[i];
      var burcMelumat = Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcKicikResimler =
          "assets/images/${Strings.BURC_ADLARI[i].toLowerCase()}${i + 1}.png";
      var burcBoyukResimler =
          "assets/images/${Strings.BURC_ADLARI[i].toLowerCase()}_buyuk${i + 1}.png";
      Burc elaveOlunacaq = Burc(burcAdi, burcTarixi, burcMelumat,
          burcKicikResimler, burcBoyukResimler);
      muveqqeti.add(elaveOlunacaq);
    }
    return muveqqeti;
  }
}
