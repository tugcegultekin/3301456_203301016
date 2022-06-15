import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class KayitIslemleri{
  Future<String> get DosyaYolu async {
    final konum= await getApplicationDocumentsDirectory();
    return konum.path;
  }
Future<File> get YerelDosya async{
    final yol=await DosyaYolu;
    return File("$yol/yenidosya.txt");
}
Future<String> DosyaOku() async{
    try{
      final dosya = await YerelDosya;
      String icerik= await dosya.readAsString();
      return icerik;
          
    }catch(h){
      return "Dosya Okunurken Hata Oluştu: $h";
    }
}
Future<File> DosyaYaz(String gIcerik) async{
    final dosya= await YerelDosya;
    return dosya.writeAsString("$gIcerik");
}
}
class DosyaIslemleri extends StatefulWidget{
  final KayitIslemleri KayitIslemi;
  const DosyaIslemleri({Key? key, required this.KayitIslemi}) : super(key: key);

  @override
  State<StatefulWidget> createState() => DosyaState();
}

class DosyaState extends State<DosyaIslemleri>{
  final yaziCtrl= TextEditingController();
  String veri= '';

  Future<File> VeriKaydet() async{
    setState(() {
      veri= yaziCtrl.text;
    });
    return widget.KayitIslemi.DosyaYaz(veri);
  }
  @override
  void initState() {
    super.initState();
    widget.KayitIslemi.DosyaOku().then((String deger) {
      setState(() {
        veri = deger;
      });
    });
  }
  void  VeriOku() {
    widget.KayitIslemi.DosyaOku().then((String deger) {
      setState(() {
        veri= deger;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Notlarım ",),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "Eklemek istediğiniz notlarınızı yazınız",
            ),
            controller: yaziCtrl,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                  child:
                  RaisedButton(
                    color: Colors.orangeAccent,
                    onPressed: VeriKaydet,
                    child: Text("Kaydet",
                    style: TextStyle(color: Colors.white),
                  ),
            ),
          )
              ),
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child:
                    RaisedButton(
                      color: Colors.orangeAccent,
                      onPressed: VeriOku,
                      child: Text("Oku",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
              ),
            ],
      ),
         Expanded(
             child: Padding(
               padding: EdgeInsets.all(15.0),
             child: Text("$veri"),
             ),
         ),
    ],
    ),
    );
  }
  }
