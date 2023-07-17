import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExitPage extends StatelessWidget {
  const ExitPage({super.key});



  void _exitApp(BuildContext context) {
    SystemNavigator.pop();
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
              image: AssetImage("images/backgroundLast.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(30, 220.0, 50, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sağlıklı Cilt, Işıltılı Güzellik',
                  style: TextStyle(
                    fontFamily: "Nunito",
                    fontSize: 25,
                    color: Color(0xFF2F80ED),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'Unutmayın, her cilt farklıdır ve önemli olan sağlıklı bir cilde sahip olmaktır! Düzenli cilt bakım rutini ve sağlıklı yaşam alışkanlıklarıyla cildinizi sağlıklı tutabilirsiniz. Sağlıklı bir cilt size güven, mutluluk ve içsel ışıltı sağlar. Her gün sağlıklı bir ciltle parlayın ve en iyisini hissedin!',
                  style: TextStyle(
                    fontFamily: "Nunito",
                    color: Color(0xFF2F80ED).withOpacity(0.7),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () => _exitApp(context),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF2F80ED),
                    ),
                    child: Text(
                      'Cildinize İyi Bakın',
                      style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
