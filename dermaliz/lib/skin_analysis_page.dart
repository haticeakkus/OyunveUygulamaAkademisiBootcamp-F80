import 'package:flutter/material.dart';


class SkinAnalysisPage extends StatelessWidget {
  const SkinAnalysisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/backgroundSkin.jpg"),
            fit: BoxFit.cover,
          ),
        ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 180.0, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
              'Cilt Analizi',
              style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 35,
                color: Color(0xFF2F80ED),
                fontWeight: FontWeight.w700,
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
