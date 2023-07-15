import 'package:dermaliz/register_page.dart';
import 'package:dermaliz/services/auth.dart';
import 'package:dermaliz/skin_analysis_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void handleLoginButtonPressed(BuildContext context) async {
    String email = emailController.text;
    String password = passwordController.text;

    User? user = await AuthService().signIn(email, password);

    if (user != null) {
      // Giriş başarılı oldu, kullanıcıyı ana sayfaya yönlendirin veya istediğiniz işlemleri yapın.
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SkinAnalysisPage()),
      );
    } else {
      // Giriş başarısız oldu, kullanıcıya hata mesajı gösterin veya istediğiniz işlemleri yapın.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Giriş Başarısız'),
            content: Text('E-posta veya şifre hatalı.'),
            actions: [
              TextButton(
                child: Text('Tamam'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 90.0, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Giriş Yap',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                SizedBox(height: 170),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                      labelStyle: TextStyle(
                        color: Color(0xFF2F80ED),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF2F80ED),
                          width: 1.0,
                        ),
                      )
                  ),
                ),

                SizedBox(height: 10),

                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Şifre',
                    labelStyle: TextStyle(
                      color: Color(0xFF2F80ED),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF2F80ED),
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () => handleLoginButtonPressed(context),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF2F80ED), // Buton rengini 0xFF2F80ED olarak ayarlayın
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Container(
                      width: 150.0, // Genişliği 150.0 olarak ayarlayın
                      padding: EdgeInsets.symmetric(vertical: 15),
                      alignment: Alignment.center,
                      child: Text(
                        "Giriş Yap",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hesabın yok mu? ",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegisterPage()),
                        );
                      },
                      child: Text(
                        "Kayıt Ol",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
