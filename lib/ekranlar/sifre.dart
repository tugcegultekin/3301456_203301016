import 'package:flutter/material.dart';
import 'login_page.dart';
import 'auth.dart';

class SifreYenilemePage extends StatefulWidget {
  @override
  _SifreYenilemeState createState() => _SifreYenilemeState();
}

class _SifreYenilemeState extends State<SifreYenilemePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordAgainController =
  TextEditingController();

  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: size.height * .7,
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
                              controller: _nameController,
                              style: TextStyle(
                                color: Colors.blueAccent,
                              ),
                              cursorColor: Colors.blueAccent,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.blueAccent,
                                ),
                                hintText: 'Kullanıcı adı',
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
                                hintText: 'Yeni Şifre',
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
                              controller: _passwordAgainController,
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.vpn_key,
                                  color: Colors.blueAccent,
                                ),
                                hintText: 'Yeni Şifre Tekrar',
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
                            height: size.height * 0.08,
                          ),
                          InkWell(
                            onTap: () {
                              _authService
                                  .createPerson(
                                  _nameController.text,
                                  _emailController.text,
                                  _passwordController.text)
                                  .then((value) {
                                return Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blueAccent, width: 2),
                                  //color: colorPrimaryShade,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Center(
                                    child: Text(
                                      "Kaydet",
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 20,
                                      ),
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
              EdgeInsets.only(top: size.height * .06, left: size.width * .02),
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.orangeAccent.withOpacity(.75),
                        size: 26,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.3,
                    ),
                    Text(
                      "Şifre Yenileme",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.orangeAccent.withOpacity(.75),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
