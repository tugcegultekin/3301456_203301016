
import 'package:flutter/material.dart';
import 'dart:math';

class Ask extends StatefulWidget {
  @override
  State<Ask> createState() => AskRoman();
}

class AskRoman extends State<Ask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aşk Romanları Öner"),
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
                      title: Text("Uğultulu Tepeler\nEmily Bronte"),
                    );
                    showDialog(
                        context: context, builder: (BuildContext context) => alert);
                  } else if (rnd2 > 6 && rnd2 < 10) {
                    var alert = const AlertDialog(
                      title: Text("Gurur ve Önyargı\nYazar: Jane Austen"),
                    );
                    showDialog(
                        context: context, builder: (BuildContext context) => alert);
                  } else if (rnd2 > 11 && rnd2 < 15) {
                    var alert = const AlertDialog(
                      title: Text("Vadideki Zambak\nYazar: Honoré de Balzac"),
                    );
                    showDialog(
                        context: context, builder: (BuildContext context) => alert);
                  } else if (rnd2 > 16 && rnd2 < 20) {
                    var alert = const AlertDialog(
                      title: Text("Eylül\nYazar: Mehmet Rauf"),
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