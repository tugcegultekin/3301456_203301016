import 'package:flutter/material.dart';

import 'login_page.dart';

class UyeOl extends StatefulWidget {
  UyeOl({Key? key}) : super(key: key);

  @override
  UyeOlmaEkrani createState() => UyeOlmaEkrani();
}

class UyeOlmaEkrani extends State<UyeOl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Üye Ol"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only( left: 20.0, right: 20.0),
          child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const TextField(
            decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.indigoAccent),
              ),
              labelText: 'Kullanıcı Adı',
              labelStyle: TextStyle(color: Colors.indigoAccent),
              border: OutlineInputBorder()
            ),
          ),
          const TextField(
            obscureText: true,
            decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.indigoAccent),
              ),
                  labelText: 'Şifre',
                  labelStyle: TextStyle(color: Colors.indigoAccent),
                  border: OutlineInputBorder()
            ),
            ),
          const TextField(
            decoration: const InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.indigoAccent),
              ),
                labelText: 'Telefon Numarası',
                labelStyle: TextStyle(color: Colors.indigoAccent),
                border: OutlineInputBorder()
              ),
            ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            textColor: Colors.black,
            padding: const EdgeInsets.all(0.0),
            child: Text('Üye Ol'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: const Text('Üye Misiniz? Giriş Yapın'),
          ),
        ],
      )),
    )
      );
  }
}
