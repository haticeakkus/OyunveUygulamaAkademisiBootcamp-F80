
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:dermaliz/home_page.dart';
import 'package:dermaliz/login_page.dart';
import 'package:dermaliz/register_page.dart';
import 'package:dermaliz/skin_analysis_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dermaliz',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/skin-analysis': (context) => SkinAnalysisPage(),
      },
    );
  }
}
