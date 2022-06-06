import 'package:flutter/material.dart';
import 'package:horoscope/model/burc.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            centerTitle: true,
            pinned: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenBurc.burcAdi),
              background: Image.asset(
                secilenBurc.burcBoyukShekli,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  secilenBurc.burcMelumati,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
