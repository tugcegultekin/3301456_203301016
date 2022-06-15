
import 'package:flutter/material.dart';

import 'kitaplar.dart';

class KitapEklePage extends StatefulWidget {
  @override
  State<KitapEklePage> createState() => KitapEklePageState();
}

class KitapEklePageState extends State<KitapEklePage> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: const Text("Kitap Ekle"),
      ),
      resizeToAvoidBottomInset: false,
      body: Form(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Kitap Adı',
                ),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Yazarı',
                ),
              ),
              const TextField(
                obscureText: true,
                maxLength: 4,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Sayfa Sayısı',
                ),
              ),
              const TextField(
                obscureText: true,
                maxLength: 12,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tür',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => KitaplarMenu()));
                },
                child: const Text('KİTAP EKLE '),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
