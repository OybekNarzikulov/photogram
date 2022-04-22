import 'package:flutter/material.dart';
import 'package:photogram_app/theme/app_color.dart';
import 'package:photogram_app/theme/app_text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 230,),
            const Text(
              'photogram',
              style: AppTextStyles.mainTitle,
            ),
            const SizedBox(
              height: 250,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(vertical: 10),
              color: AppColor.white,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.quantic,
                    ),
                    child: const Text(
                      'Quantic',
                      style: TextStyle(color: AppColor.white),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                       Text(
                        'Quantic Jamoasi',
                        style: AppTextStyles.mainPageTitle,
                      ),
                       Text(
                        'Photogram beta 1.0',
                        style: AppTextStyles.mainPageSubtitle,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Kirish',
                      style: AppTextStyles.whiteButtonStyle,
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      primary: AppColor.white,
                      side: BorderSide(color: AppColor.black, width: 2),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Kirish',
                      style: AppTextStyles.blackButtonStyle,
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      primary: AppColor.black,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
