
import 'package:flutter/material.dart';
import 'dart:math';

class Polisiye extends StatefulWidget {
  @override
  State<Polisiye> createState() => PolisiyePage();
}

class PolisiyePage extends State<Polisiye> {
  double _width = 200;
  double _height = 200;
  _updateState(){
     setState(() {
       _width= 400;
       _height = 400;
     });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Polisiye Kitap Öner"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          ElevatedButton(
            onPressed: () {
      _updateState();
          AnimatedContainer(
            duration: Duration(milliseconds: 400),
            curve: Curves.bounceOut,
            width: _width,
            height: _height,
            color: Colors.indigo[200],
            child: Center(
              child:Text("Polisiye Kitap Öner",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          );
              Random rnd = new Random();
              var rnd2 = rnd.nextInt(13);

              if (rnd2 > 1 && rnd2 <= 3) {
                var alert = const AlertDialog(
                  title: Text("Büyük Uyku\nYazar: Raymond Chandler"),
                );
                showDialog(
                    context: context, builder: (BuildContext context) => alert);
              } else if (rnd2 > 3 && rnd2 <= 5) {
                var alert = const AlertDialog(
                  title: Text("Ölüm Adası\nYazar: Agatha Christie"),
                );
                showDialog(
                    context: context, builder: (BuildContext context) => alert);
              } else if (rnd2 > 5 && rnd2 <= 7) {
                var alert = const AlertDialog(
                  title: Text("On Kişiydiler\nYazar: Agatha Christie"),
                );
                showDialog(
                    context: context, builder: (BuildContext context) => alert);
              } else if (rnd2 > 7 && rnd2 <= 9) {
                var alert = const AlertDialog(
                  title: Text("Melekler ve Şeytanlar\nYazar: Dan Brown"),
                );
                showDialog(
                    context: context, builder: (BuildContext context) => alert);
              } else if (rnd2 > 9 && rnd2 <= 11) {
                var alert = const AlertDialog(
                  title: Text("Gözlerini Sımsıkı Kapat\nYazar: John Verdon"),
                );
                showDialog(
                    context: context, builder: (BuildContext context) => alert);
              } else if (rnd2 > 11 && rnd2 <= 13) {
                var alert = const AlertDialog(
                  title: Text("Cesetler Merdiveni\nYazar: Agatha Christie"),
                );
                showDialog(
                    context: context, builder: (BuildContext context) => alert);
              }
            },
            child: const Text('KİTAP ÖNER'),
          ),
        ],
      )),
    );
  }

}
