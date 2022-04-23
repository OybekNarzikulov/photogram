import 'package:flutter/material.dart';
import 'package:photogram_app/routes/app_routes.dart';
import 'package:photogram_app/theme/app_color.dart';
import 'package:photogram_app/theme/app_constants.dart';
import 'package:photogram_app/theme/app_text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                'Kirish',
                style: AppTextStyles.otherTitles,
              ),
            ),
            const SizedBox(height: 30),
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
            const SizedBox(height: 15),
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
            const SizedBox(height: 15),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(AppConstants.key.currentState!.context,
                        AppRoutes.mainPage);
                  });
                },
                child: const Text(
                  'KIRISH',
                  style: AppTextStyles.blackButtonStyle,
                ),
                autofocus: true,
                style: ElevatedButton.styleFrom(
                  primary: AppColor.black,
                ),
              ),
            ),
            const SizedBox(height: 15),
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
                    'GOOGLE BILAN KIRISH',
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
