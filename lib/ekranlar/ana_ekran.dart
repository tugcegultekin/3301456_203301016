import 'package:flutter/material.dart';
import 'login_page.dart';

class AnaEkran extends StatefulWidget {
  AnaEkran({Key? key}) : super(key: key);

  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kitaplık"),
      ),
        backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/images/books.png"),
              width: 450,
              height: 250,
            ),
            Text(
                "  Kitaplık uygulamasının hedefi kitap okuma alışkanlığınızı devam ettirmenizi sağlamak ve size kitap önermektir. Siz kitap okurken sevdiğiniz türlere, okuduğunuz kitaplara göre size kitap önerecek ve önerilen kitaplar hakkında bilgi verecektir. Kitabınızı okurken hangi sayfada kaldığınızı, kaç sayfa okuduğunuzu yazabilecek, kitap hakkında notlarınızı kaydedebileceksiniz. Kitaplığınız her daim yanınızda bulunmuş olacaktır."),
            MaterialButton(
              child: Text("Üye Ol/Giriş Yap"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
