import 'package:flutter/material.dart';
import 'package:photogram_app/routes/app_routes.dart';
import 'package:photogram_app/theme/app_color.dart';
import 'package:photogram_app/theme/app_constants.dart';
import 'package:photogram_app/theme/app_text_styles.dart';

class RegistationPage_2 extends StatefulWidget {
  const RegistationPage_2({Key? key}) : super(key: key);

  @override
  _RegistationPage_2State createState() => _RegistationPage_2State();
}

class _RegistationPage_2State extends State<RegistationPage_2> {
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
                hintText: 'Username',
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
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(AppConstants.key.currentState!.context,
                        AppRoutes.loginPage);
                  });
                },
                child: const Text(
                  'RO\'YXATDAN O\'TISH',
                  style: AppTextStyles.blackButtonStyle,
                ),
                autofocus: true,
                style: ElevatedButton.styleFrom(
                  primary: AppColor.black,
                ),
              ),
            ),
            const SizedBox(height: 30),
            RichText(
              text: const TextSpan(
                style: AppTextStyles.description,
                children: [
                  TextSpan(text: 'Ro’yxat o’tish tugmasini bosish orqali siz '),
                  TextSpan(text: 'photogram ', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'ijtimoiy tarmog’ining '),
                  TextSpan(text: 'Foydalanish shartlari', style: TextStyle(decoration: TextDecoration.underline)),
                  TextSpan(text: ' va '),
                  TextSpan(text: 'Xavfsizlik qoidalariga', style: TextStyle(decoration: TextDecoration.underline)),
                  TextSpan(text: ' rozilik bildirgan bo’lasiz.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
