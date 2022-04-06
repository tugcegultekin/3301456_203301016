import 'package:deneme1/ekranlar/uye_ol.dart';
import 'package:flutter/material.dart';
import 'hedeflenen_kitap.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String username;
  late String password;
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
                image: AssetImage("assets/images/book.png"),
                width: 250,
                height: 150,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigoAccent),
                    ),
                    labelText: "Kullanıcı Adı",
                    labelStyle: TextStyle(color: Colors.indigoAccent),
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Kullanıcı Adı Giriniz";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  username = value!;
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigoAccent),
                    ),
                    labelText: "Şifre",
                    labelStyle: TextStyle(color: Colors.indigoAccent),
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Şifre Giriniz";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  password = value!;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MaterialButton(
                    child: Text("Üye Ol"),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => UyeOl()));
                    },
                  ),
                  MaterialButton(
                    child: Text("Şifremi Unuttum"),
                    onPressed: () {},
                  )
                ],
              ),
              _loginButton(),
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
              builder: (context) => HedeflenenKitap(
                username: username,
              ),
            ),
          );
        }
      });
}
