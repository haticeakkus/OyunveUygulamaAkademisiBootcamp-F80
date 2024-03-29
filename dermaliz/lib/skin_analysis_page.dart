import 'package:flutter/material.dart';
import 'package:dermaliz/product_recommendation_page.dart';


class SkinAnalysisPage extends StatefulWidget {
  const SkinAnalysisPage({super.key});

  @override
  _SkinAnalysisPageState createState() => _SkinAnalysisPageState();
}

class _SkinAnalysisPageState extends State<SkinAnalysisPage> {
  String selectedSkinType = '';
  String selectedSkinProblem = '';

  List<String> skinTypes = ['Normal', 'Kuru', 'Yağlı', 'Karma'];
  List<String> skinProblems = ['Akne', 'Kuruluk', 'Kırışıklık', 'Pigmentasyon', 'Roza', 'Egzama'];

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
          padding: EdgeInsets.fromLTRB(20, 200.0, 20, 20),
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
              SizedBox(height: 35),
              Text(
                'Cilt Tipinizi Seçiniz:',
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  _showSkinTypeDialog();
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: selectedSkinType.isEmpty ? Colors.blue : Colors.blue,
                      width: selectedSkinType.isEmpty ? 1.5 : 2,
                    ),
                  ),
                  child: Text(
                    selectedSkinType.isNotEmpty ? selectedSkinType : 'Cilt Tipi Seçiniz',
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 18,
                      color: selectedSkinType.isEmpty ? Colors.grey : Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Cilt Probleminizi Seçiniz:',
                style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  if (selectedSkinType.isNotEmpty) {
                    _showSkinProblemDialog();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Lütfen önce cilt tipinizi seçin.'),
                      ),
                    );
                  }
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: selectedSkinProblem.isEmpty ? Colors.blue : Colors.blue,
                      width: selectedSkinProblem.isEmpty ? 1.5 : 2,
                    ),
                  ),
                  child: Text(
                    selectedSkinProblem.isNotEmpty ? selectedSkinProblem : 'Cilt Problemi Seçiniz',
                    style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 18,
                      color: selectedSkinProblem.isEmpty ? Colors.grey : Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              if (selectedSkinProblem.isNotEmpty) // Add this condition to show the recommendation
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Cilt Probleminize Uygun Ürün:',
                      style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 5),
                    Center(
                      child: SizedBox(
                        width: 250.0,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductRecommendPage(
                                  skinType: selectedSkinType,
                                  skinProblem: selectedSkinProblem,
                                ),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF2F80ED),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text('Önerilen Ürünü Gör',
                            style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),),
                        ),
                      ),
                    ),
                  ],
                ),


            ],
          ),
        ),
      ),
    );
  }

  void _showSkinTypeDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Cilt Tipinizi Seçiniz',
            style: TextStyle(
              fontFamily: "Nunito",
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: skinTypes.map((type) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSkinType = type;
                    });
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      type,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }

  void _showSkinProblemDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Cilt Probleminizi Seçiniz',
            style: TextStyle(
              fontFamily: "Nunito",
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: skinProblems.map((problem) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSkinProblem = problem;
                    });
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      problem,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
