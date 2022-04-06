
import 'package:flutter/material.dart';

import 'hedeflenenkitabinbilgileri.dart';

class HedeflenenKitap extends StatefulWidget {
  final username;

  const HedeflenenKitap({Key? key, @required this.username}) : super(key: key);

  @override
  HedeflenenKitapBilgileri createState() => HedeflenenKitapBilgileri();
}

class HedeflenenKitapBilgileri extends State<HedeflenenKitap> {
  String dropdownvalue = 'Roman';

  var items = [
    'Roman',
    'Aşk',
    'Bilim',
    'Polisiye',
    'Masal',
  ];
  late String kitapTuru;
  late String kitaphedefSayfaSayisi;
  late String kitapAdi;
  final _formKey = GlobalKey<FormState>();

  get key => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
      ),
      body: Center(child: Padding(
    padding: const EdgeInsets.only( left: 20.0, right: 20.0),
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
            const TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(  borderSide: BorderSide(color: Colors.indigoAccent),
                ),
                  labelText: 'En Son Okuduğum Kitap',
                  labelStyle: TextStyle(color: Colors.indigoAccent),
                  border: OutlineInputBorder()
              ),
            ),

            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.indigoAccent),
                ),
                  labelText: 'Günlük Okuduğum Sayfa Sayısı',
                  labelStyle: TextStyle(color: Colors.indigoAccent),
                  border: OutlineInputBorder()),
            ),
            MaterialButton(
              child: Text("Önerilen Kitaplara Başla"),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => GelenHedefKitap()));
              },
            ),
          ],
        ),
      ),
    ),
    );
  }

  Widget _loginButton() => ElevatedButton(
      child: Text("Giriş Yap"),
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          _formKey.currentState!.save();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HedeflenenKitap(),
            ),
          );
        }
      });
}
