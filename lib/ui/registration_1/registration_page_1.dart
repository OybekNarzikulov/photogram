import 'package:flutter/material.dart';
import 'package:photogram_app/routes/app_routes.dart';
import 'package:photogram_app/theme/app_color.dart';
import 'package:photogram_app/theme/app_constants.dart';
import 'package:photogram_app/theme/app_text_styles.dart';

class RegistationPage_1 extends StatefulWidget {
  const RegistationPage_1({Key? key}) : super(key: key);

  @override
  _RegistationPag_1State createState() => _RegistationPag_1State();
}

class _RegistationPag_1State extends State<RegistationPage_1> {
  TextEditingController userText = TextEditingController();

  void clearText() {
    return userText.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        leading: BackButton(color: AppColor.black),
        backgroundColor: AppColor.white,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Ro’yxatdan o’tish',
                style: AppTextStyles.otherTitles,
              ),
            ),
            SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Email field',
                // suffixIcon: IconButton(
                //     onPressed: clearText, icon: Icon(Icons.clear)),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            SizedBox(height: 15),
            const TextField(
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                hintText: 'Password field',
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.black),
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(AppConstants.key.currentState!.context, AppRoutes.registration_2);
                  });
                },
                child: const Text(
                  'KEYINGISI',
                  style: AppTextStyles.blackButtonStyle,
                ),
                autofocus: true,
                style: ElevatedButton.styleFrom(
                  primary: AppColor.black,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 50,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.yellow, Colors.red, Colors.blue],
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'GOOGLE BILAN RO\'YXATDAN O\'TISH',
                    style: AppTextStyles.googleButtonStyle,
                  ),
                  autofocus: true,
                  style: ElevatedButton.styleFrom(primary: AppColor.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
