
import 'package:deneme1/ekranlar/ask.dart';
import 'package:deneme1/ekranlar/bilim_kurgu.dart';
import 'package:deneme1/ekranlar/macera.dart';
import 'package:deneme1/ekranlar/psikolojik.dart';
import 'package:flutter/material.dart';
import 'macera.dart';
import 'polisiye.dart';
import 'psikolojik.dart';
import 'bilim_kurgu.dart';

class Turler extends StatefulWidget {
  final  username;

  const Turler({Key? key, this.username}) : super(key: key);

  @override
  State<Turler> createState() => TurSecimi();
}

class TurSecimi extends State<Turler> {
  @override
  Widget build(BuildContext) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 60, height: 20));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Türler"),
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
                                builder: (context) => Polisiye()));
                      },
                      child: Text("Polisiye"),
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
                                builder: (context) => Psikolojik()));
                      },
                      child: Text("Psikolojik"),
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
                                builder: (context) => Macera()));
                      },
                      child: Text("Macera"),
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
                                builder: (context) => BilimKurgu()));
                      },
                      child: Text("Bilim Kurgu"),
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
                                builder: (context) => Ask()));
                      },
                      child: Text("Aşk Romanları"),
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
