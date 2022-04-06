import 'package:deneme1/ekranlar/hedeflenenkitabinbilgileri.dart';
import 'package:flutter/material.dart';

class Basla extends StatefulWidget {
  const Basla({Key? key}) : super(key: key);

  @override
  State<Basla> createState() => Baslabuton();
}

class Baslabuton extends State<Basla> {
  late String basla;
  late String degis;
  final _formKey = GlobalKey<FormState>();

  get key => null;

  @override
  Widget build(BuildContext) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(
                image: AssetImage("assets/images/olasiliksiz.png"),
                width: 250,
                height: 150,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigoAccent),
                    ),
                    labelText: "Kaç Günde Bitirmeyi Hedefliyorum",
                    labelStyle: TextStyle(color: Colors.indigoAccent),
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Kaç Günde Bitirmeyi Hedefliyorum";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigoAccent),
                    ),
                    labelText: "Kaçıncı Sayfada Kaldım",
                    labelStyle: TextStyle(color: Colors.indigoAccent),
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Kaçıncı Sayfada Kaldım";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.indigoAccent),
                  ),
                  labelText: "Kitap Hakkında Notlarım",
                  labelStyle: TextStyle(color: Colors.indigoAccent),
                    border: OutlineInputBorder()),

                ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            MaterialButton(
              child: Text("Diğer Kitaplara Göz Atmaya Devam Et"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GelenHedefKitap()));
              },
            ),
            ],
          ),
        ],),
      ),
    ),);
  }
}