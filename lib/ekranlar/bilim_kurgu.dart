
import 'package:flutter/material.dart';
import 'dart:math';

class BilimKurgu extends StatefulWidget {
  @override
  State<BilimKurgu> createState() => BilimKurguPage();
}

class BilimKurguPage extends State<BilimKurgu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bilim Kurgu Kitapları Öner"),
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
                      title: Text("20. Yüzyılda Paris\nJules Verne"),
                    );
                    showDialog(
                        context: context, builder: (BuildContext context) => alert);
                  } else if (rnd2 > 6 && rnd2 < 10) {
                    var alert = const AlertDialog(
                      title: Text("Seçilmiş Kişi\nYazar: Lois Lowry"),
                    );
                    showDialog(
                        context: context, builder: (BuildContext context) => alert);
                  } else if (rnd2 > 11 && rnd2 < 15) {
                    var alert = const AlertDialog(
                      title: Text("Frankenstein\nYazar: Mary Shelly"),
                    );
                    showDialog(
                        context: context, builder: (BuildContext context) => alert);
                  } else if (rnd2 > 16 && rnd2 < 20) {
                    var alert = const AlertDialog(
                      title: Text("Zaman Makinesi\nYazar: H. G. Wells"),
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