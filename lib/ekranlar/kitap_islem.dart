
import 'package:deneme1/ekranlar/dosya_islemleri.dart';
import 'package:deneme1/ekranlar/profilim.dart';
import 'package:deneme1/ekranlar/turler.dart';
import 'package:flutter/material.dart';
import 'kitap_basla.dart';
import 'kitaplar.dart';
import 'turler.dart';
import 'dosya_islemleri.dart';

class KitapSecimMenu extends StatefulWidget {
  final  username;

  const KitapSecimMenu({Key? key, this.username}) : super(key: key);

  @override
  State<KitapSecimMenu> createState() => KitapSecimMenuState();
}

class KitapSecimMenuState extends State<KitapSecimMenu> {
  @override
  Widget build(BuildContext) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 60, height: 20));
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: Text("İşlem"),
      ),
      resizeToAvoidBottomInset: false,
      body: Form(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 150.0,
                    height: 100.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => KitaplarMenu()));
                      },
                      child: Text("Kitaplarım"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ButtonTheme(
                    minWidth: 150.0,
                    height: 100.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => KitapBaslaPage()));
                      },
                      child: Text("Kitap Başla"),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 200.0,
                    height: 100.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DosyaIslemleri(KayitIslemi: KayitIslemleri())));
                      },
                      child: Text("Notlarım"),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 150.0,
                    height: 100.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Turler()));
                      },
                      child: Text("Kitap Öner"),
                    ),
                  ),
                  ButtonTheme(
                    minWidth: 150.0,
                    height: 100.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => KitapProfilimPage()));
                        },
                      child: Text("Profilim"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
