
import 'package:flutter/material.dart';
import 'dart:math';

class Macera extends StatefulWidget {
  @override
  State<Macera> createState() => MaceraPage();
}

class MaceraPage extends State<Macera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Macera Kitapları Öner"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Random rnd = new Random();
                  var rnd2 = rnd.nextInt(9);

                  if (rnd2 > 1 && rnd2 <=3) {
                    var alert = const AlertDialog(
                      title: Text("Esrarlı Ada\nJules Verne"),
                    );
                    showDialog(
                        context: context, builder: (BuildContext context) => alert);
                  } else if (rnd2 > 3 && rnd2 <=5) {
                    var alert = const AlertDialog(
                      title: Text("Yalnız Efe\nYazar: Ömer Seyfettin"),
                    );
                    showDialog(
                        context: context, builder: (BuildContext context) => alert);
                  } else if (rnd2 > 5 && rnd2 <=7) {
                    var alert = const AlertDialog(
                      title: Text("Korkusuz Kaptanlar\nYazar: Rudyard Kipling"),
                    );
                    showDialog(
                        context: context, builder: (BuildContext context) => alert);
                  } else if (rnd2 > 7 && rnd2 <= 9) {
                    var alert = const AlertDialog(
                      title: Text("Talihsiz Serüvenler Dizisi\nYazar: Lemony Snicket"),
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
