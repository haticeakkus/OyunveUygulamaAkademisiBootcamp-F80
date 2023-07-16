import 'package:dermaliz/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          child: Center(
            child: Transform.translate(
              offset: Offset(-75, 90),
              child: Text(
                "Dermaliz",
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 50,
                  color: Color(0xFF2F80ED),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),


        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },

          backgroundColor: Colors.white,
          child: Icon(
            Icons.login_outlined,
            color: Color(0xFF2F80ED),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
