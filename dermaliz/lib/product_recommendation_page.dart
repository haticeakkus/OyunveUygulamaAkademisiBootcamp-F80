import 'package:dermaliz/login_page.dart';
import 'package:flutter/material.dart';

class ProductRecommendationPage extends StatelessWidget {
  const ProductRecommendationPage({super.key});

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
        ),
      ),
    );
  }
}
