
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
                  var rnd2 = rnd.nextInt(9);

                  if (rnd2 > 1 && rnd2 <=3 ) {
                    var alert = const AlertDialog(
                      title: Text("Büyük Umutlar\nYazar: Charles Dickens"),
                    );
                    showDialog(
                        context: context, builder: (BuildContext context) => alert);
                  } else if (rnd2 > 3 && rnd2 <=5 ) {
                    var alert = const AlertDialog(
                      title: Text("Fareler ve İnsanlar\nYazar: John Steinbeck"),
                    );
                    showDialog(
                        context: context, builder: (BuildContext context) => alert);
                  } else if (rnd2 > 5 && rnd2 <= 7) {
                    var alert = const AlertDialog(
                      title: Text("Kumarbaz\nYazar: Dostoyevski"),
                    );
                    showDialog(
                        context: context, builder: (BuildContext context) => alert);
                  } else if (rnd2 >7 && rnd2 <= 9) {
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
