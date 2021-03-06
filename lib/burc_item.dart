import 'package:flutter/material.dart';
import 'package:horoscope/burc_detay.dart';
import 'package:horoscope/model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/burcDetay",
                  arguments: listelenenBurc);
            },
            leading: Image.asset(
              listelenenBurc.burcBalacaShekli,
            ),
            title: Text(
              listelenenBurc.burcAdi,
              style: myTheme.headline5,
            ),
            subtitle: Text(
              listelenenBurc.burcTarixi,
              style: myTheme.subtitle1,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
