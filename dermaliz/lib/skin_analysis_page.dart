import 'package:flutter/material.dart';


class SkinAnalysisPage extends StatelessWidget {
  const SkinAnalysisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
