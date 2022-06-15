
import 'kitap_islem.dart';
import 'sifre.dart';
import 'auth.dart';
import 'package:flutter/material.dart';
import 'uye_ol.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: size.height * .5,
              width: size.width * .85,
              decoration: BoxDecoration(
                  color: Colors.orangeAccent.withOpacity(.75),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.orangeAccent.withOpacity(.75),
                        blurRadius: 10,
                        spreadRadius: 2)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                          controller: _emailController,
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                          cursorColor: Colors.blueAccent,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Colors.blueAccent,
                            ),
                            hintText: 'E-Mail',
                            prefixText: ' ',
                            hintStyle: TextStyle(color: Colors.blueAccent),
                            focusColor: Colors.blueAccent,
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueAccent,
                                )),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueAccent,
                                )),
                          )),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      TextField(
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                          cursorColor: Colors.blueAccent,
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.vpn_key,
                              color: Colors.blueAccent,
                            ),
                            hintText: 'Parola',
                            prefixText: ' ',
                            hintStyle: TextStyle(
                              color: Colors.blueAccent,
                            ),
                            focusColor: Colors.blueAccent,
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueAccent,
                                )),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.blueAccent,
                                )),
                          )),
                      SizedBox(
                        height: size.height * 0.08,
                      ),
                      InkWell(
                        onTap: () {
                          _authService
                              .signIn(
                              _emailController.text, _passwordController.text)
                              .then((value) {
                            return Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => KitapSecimMenu()));
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueAccent, width: 2),
                              //color: colorPrimaryShade,
                              borderRadius: BorderRadius.all(Radius.circular(30))),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Center(
                                child: Text(
                                  "Giriş yap",
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 20,
                                  ),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UyeOlPage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 1,
                              width: 75,
                              color: Colors.blueAccent,
                            ),
                            Text(
                              "Üye ol",
                              style: TextStyle(color: Colors.white),
                            ),
                            Container(
                              height: 1,
                              width: 75,
                              color: Colors.blueAccent,
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SifreYenilemePage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 1,
                              width: 75,
                              color: Colors.blueAccent,
                            ),
                            Text(
                              "Şifremi Unuttum",
                              style: TextStyle(color: Colors.white),
                            ),
                            Container(
                              height: 1,
                              width: 75,
                              color: Colors.blueAccent,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

