import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
class KitapProfilimPage extends StatefulWidget {
  @override
  State<KitapProfilimPage> createState() => KitapProfilimState();
}

class KitapProfilimState extends State<KitapProfilimPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          title: Text("Profilim"),
        ),
        body: Container(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(height: 20),
                      Image(
                        image: AssetImage("assets/kitaplogo.jpg"),
                        width: 300,
                        height: 200,
                      ),
                    ],
                  )),
              ListView(
                children: const [
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                      child: ListTile(
                    title: Text("Kullanıcı Adı: "),
                  )),
                  Card(
                    child: ListTile(
                      title:
                          Text("Okunan Kitaplar:\nOlasılıksız\nSuç ve Ceza"),
                    ),
                  ),
                ],
                shrinkWrap: true,
              )
            ],
          ),
        ));
  }
}
