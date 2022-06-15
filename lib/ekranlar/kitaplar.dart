import 'package:flutter/material.dart';

class KitaplarMenu extends StatefulWidget {
  @override
  State<KitaplarMenu> createState() => KitaplarMenuState();
}

class KitaplarMenuState extends State<KitaplarMenu> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kitaplarım"),
      ),
      resizeToAvoidBottomInset: false,
      body: Form(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListView(
                children: const [
                  SizedBox(
                    height: 4,
                  ),
                  Card(
                      child: ListTile(
                    title: Text("Kitap Adı: Olasılıksız\nYazar: Adam Fawer\nTür: Kurgu\nSayfa Sayısı: 472\nBaşlangıç Tarihi: 06.03.22\nBitiş Tarihi: 19.03.22"),
                  )),
                  Card(
                    child: ListTile(
                      title:
                          Text("Kitap Adı: Suç ve Ceza\nYazar: Dostoyevski\nTür: Psikolojik Kurgu\nSayfa Sayısı: 705\nBaşlangıç Tarihi: 21.03.22\nBitiş Tarihi: 30.04.22"),
                    ),
                  ),
                ],
                shrinkWrap: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
