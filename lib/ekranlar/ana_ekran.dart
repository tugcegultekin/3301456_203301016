import 'package:flutter/material.dart';
import 'login_page.dart';

class AnaEkran extends StatefulWidget {
  AnaEkran({Key? key}) : super(key: key);

  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                child: const Image(
                  image: AssetImage("assets/images/books.png"),
                  width: 350,
                  height: 250,
                ),
              ),
              SizedBox(
                height: 20,
              )
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                    "Okuduğunuz tüm kitapların takibini dijital olarak yapmanızı\nsağlayacak ve ilerlemenizi kaydedecektir."),
              ],
            ),
            SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              MaterialButton(
              child: const Text("Üye Ol / Giriş Yap"),

          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginPage()));
          },
          height: 50,
          minWidth: 70,
          color: Colors.red,

                ),
            ],),
          ],
        ),
      ),
    );
  }
}
