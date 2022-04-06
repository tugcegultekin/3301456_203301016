import 'package:deneme1/ekranlar/olasiliksiz_bilgi.dart';
import 'package:deneme1/ekranlar/onkisiydiler_bilgi.dart';
import 'package:flutter/material.dart';

class GelenHedefKitap extends StatefulWidget {
  final kitapturu;
  final kitaphedeflenensayfasayisi;
  final basla;

  const GelenHedefKitap(
      {Key? key,
      @required this.kitapturu,
      this.kitaphedeflenensayfasayisi,
      this.basla})
      : super(key: key);

  @override
  GelenHedefKitapBilgileri createState() => GelenHedefKitapBilgileri();
}

class GelenHedefKitapBilgileri extends State<GelenHedefKitap> {
  late String kitapTuru;
  late String kitaphedefSayfaSayisi;
  late String basla;
  final _formKey = GlobalKey<FormState>();

  get key => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yeni Kitaplar"),
      ),
      body: Center(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text("Önerilen Kitaplar"),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => KitapHakkinda()));
              },
              textColor: Colors.black,
              padding: const EdgeInsets.all(0.0),
              child: Text('Olasılıksız'),
            ),

            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => KitaplaIlgili()));
              },
              textColor: Colors.black,
              padding: const EdgeInsets.all(0.0),
              child: Text('On kişiydiler'),
            ),
          ],
        ),
      ),
        );
  }
}

