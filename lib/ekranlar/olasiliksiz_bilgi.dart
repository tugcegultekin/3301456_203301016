import 'package:deneme1/ekranlar/hedeflenenkitabinbilgileri.dart';
import 'package:flutter/material.dart';
import 'package:deneme1/ekranlar/kitapçizelge.dart';

class KitapHakkinda extends StatefulWidget {
  KitapHakkinda({Key? key}) : super(key: key);

  @override
  KitapHakkindaBilgiler createState() => KitapHakkindaBilgiler();
}

class KitapHakkindaBilgiler extends State<KitapHakkinda> {
  late String basla;
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
            Text("Kitap Adı: Olasılıksız"),
            SizedBox(height: 20),
            Text("Yazar: Adam Faver"),
            SizedBox(height: 20),
            Text(
                "Amerikalı yazar Adam Fewer’ın 2005 yılında yayınladığı “Olasılıksız”, tüm dünyada büyük yankı uyandıran bir başyapıt niteliği taşıyor. “İnsan, beyninin ne kadarını kullanabilir ki?” sorusuna yanıtların arandığı bu kitap, okuyucuları matematiksel düşüncenin ve bilimin etrafında topluyor. Eserde işlenen konu, Laplace’in şeytanı teorisi üzerinde dururken, aslında hiçbir şeyin şans eseri olmadığını ve geçmişteki olayların etkileşimi ile bu anın yaşanabileceğini gözler önüne seriyor. Zekice oluşturulmuş bir kurgu ile karşı karşıya kalacağınız bu kitap, sizi içerisinden çıkamayacağınız bir olasılıklar zincirine davet ediyor."),
            SizedBox(height: 20),
            const Image(
              image: AssetImage("assets/images/olasiliksiz.png"),
              width: 130,
              height: 230,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MaterialButton(
                  child: Text("Başla"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Basla()));
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
            ),

          ],),),);
  }
}
