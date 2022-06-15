import 'package:flutter/material.dart';

class KitapHakkindaBilgi extends StatefulWidget {
  @override
  State<KitapHakkindaBilgi> createState() => KitapHakkindaBilgiState();
}

class KitapHakkindaBilgiState extends State<KitapHakkindaBilgi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kitap Hakkında Bilgi"),
      ),
      body: Center(
          child: Column(
        children: [
          //Dinamik Sayfa Olacak
        ],
      )),
    );
  }
}
