import 'package:deneme1/ekranlar/hedeflenenkitabinbilgileri.dart';
import 'package:flutter/material.dart';
import 'package:deneme1/ekranlar/kitapçizelge2.dart';

class KitaplaIlgili extends StatefulWidget {
  KitaplaIlgili({Key? key}) : super(key: key);

  @override
  KitapHakkindaBilgi createState() => KitapHakkindaBilgi();
}


class KitapHakkindaBilgi extends State<KitaplaIlgili> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kitap Hakkında"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text("Kitap Türü: Polisiye"),
              SizedBox(height: 20),
              Text("Kitap Adı: On Kişiydiler"),
              SizedBox(height: 20),
              Text("Yazar: Agatha Christie"),
              SizedBox(height: 20),
              Text(
                  "Geçmişte verdikleri kararları, hataları ya da ihmalkârlıkları nedeniyle insanların ölümlerine yol açmış on kişi, bunu sır olarak saklamaktadır. Bu kişiler, günün birinde Una Nancy Owen adında birinden bir mektup alırlar ve tatil amacıyla Zenci Adası'ndaki gösterişli bir malikaneye davet edilirler."),
              SizedBox(height: 20),
              const Image(
                image: AssetImage("assets/images/onkisiydiler.png"),
                width: 170,
                height: 270,
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(
                child: Text("Başla"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Devam()));
                },
              ),
              MaterialButton(
                  child: Text("Değiş"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => GelenHedefKitap())
                    );
                  }
              ),
            ],
          ),],),),);
  }
}
