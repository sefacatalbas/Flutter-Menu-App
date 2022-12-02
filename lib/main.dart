import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: Text(
            'Yemek Menüsü',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int tatliNo = 1;
  int yemekNo = 1;

  List<String> corba= [
    'Mercimek Çorbası',
    'Tarhana Çorbası',
    'Tavuksuyu Çorbası',
    'Düğün Çorbası',
    'Yoğurtlu Çorbası'
  ];

  List<String> yemek= [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatli= [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  void yemekYenile() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: yemekYenile,
                child: Image.asset('assets/corba_$corbaNo.jpg'),
              ),
            ),
          ),
          Text(
            corba[corbaNo-1],
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          Container(
            width: 200,
            color: Colors.blueGrey,
            child: Divider(
              height: 5,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: yemekYenile,
                child: Image.asset('assets/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Text(
            yemek[yemekNo-1],
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          Container(
            width: 200,
            color: Colors.blueGrey,
            child: Divider(
              height: 5,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: TextButton(
                onPressed: yemekYenile,
                child: Image.asset('assets/tatli_$tatliNo.jpg'),
              ),
            ),
          ),
          Text(
            tatli[tatliNo-1],
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          Container(
            width: 200,
            color: Colors.blueGrey,
            child: Divider(
              height: 5,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
