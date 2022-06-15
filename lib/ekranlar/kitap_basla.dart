import 'package:deneme1/ekranlar/uye_ol.dart';
import 'package:flutter/material.dart';

import 'kitaplar.dart';

class KitapBaslaPage extends StatefulWidget {
  @override
  State<KitapBaslaPage> createState() => KitapBaslaPageState();
}

class KitapBaslaPageState extends State<KitapBaslaPage> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kitaba Başla"),
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
                maxLength: 12,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Kitap Adı',
                ),
              ),
              const TextField(
                obscureText: true,
                maxLength: 12,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Yazar Adı',
                ),
              ),
              const TextField(
                obscureText: true,
                maxLength: 20,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tür',
                ),
              ),
              const TextField(
                obscureText: true,
                maxLength: 20,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Sayfa Sayısı',
                ),
              ),
              const TextField(
                obscureText: true,
                maxLength: 20,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Başlangıç Tarihi',
                ),
              ),
              const TextField(
                obscureText: true,
                maxLength: 20,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Bitiş Tarihi',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => KitaplarMenu()));
                },
                child: const Text('Başla'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
