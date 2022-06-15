
import 'package:flutter/material.dart';
import 'dart:math';

class Psikolojik extends StatefulWidget {
  @override
  State<Psikolojik> createState() => Psikoloji();
}

class Psikoloji extends State<Psikolojik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Psikolojik Kitap Öner"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Random rnd = new Random();
                  var rnd2 = rnd.nextInt(75);

                  if (rnd2 > 1 && rnd2 < 5) {
                    var alert = const AlertDialog(
                      title: Text("Büyük Umutlar\nYazar: Charles Dickens"),
                    );
                    showDialog(
                        context: context, builder: (BuildContext context) => alert);
                  } else if (rnd2 > 6 && rnd2 < 10) {
                    var alert = const AlertDialog(
                      title: Text("Fareler ve İnsanlar\nYazar: John Steinbeck"),
                    );
                    showDialog(
                        context: context, builder: (BuildContext context) => alert);
                  } else if (rnd2 > 11 && rnd2 < 15) {
                    var alert = const AlertDialog(
                      title: Text("Kumarbaz\nYazar: Dostoyevski"),
                    );
                    showDialog(
                        context: context, builder: (BuildContext context) => alert);
                  } else if (rnd2 > 16 && rnd2 < 20) {
                    var alert = const AlertDialog(
                      title: Text("Sol Ayağım\nYazar: Christy Brown"),
                    );
                    showDialog(
                        context: context, builder: (BuildContext context) => alert);
                  }
                },
                child: const Text('KİTAP ÖNER'),
            ),
          ]),
    ),
    );
  }

}