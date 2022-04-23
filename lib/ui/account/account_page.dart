import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photogram_app/routes/app_routes.dart';
import 'package:photogram_app/theme/app_color.dart';
import 'package:photogram_app/theme/app_constants.dart';
import 'package:photogram_app/theme/app_text_styles.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int _selectedIndex = 4;

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex) {
        case 0:
          Navigator.pushNamed(
              AppConstants.key.currentState!.context, AppRoutes.mainPage);
          break;
        case 1:
          Navigator.pushNamed(
              AppConstants.key.currentState!.context, AppRoutes.searchPage);
          break;
        case 3:
          Navigator.pushNamed(
              AppConstants.key.currentState!.context, AppRoutes.loginPage);
          break;
        case 4:
          Navigator.pushNamed(
              AppConstants.key.currentState!.context, AppRoutes.accountPage);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Izlash',
                style: AppTextStyles.otherTitles,
              ),
            ),
            SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                // suffixIcon: IconButton(
                //     onPressed: clearText, icon: Icon(Icons.clear)),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: Text(
                'Barcha natijalar',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
              ),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 400,
              child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1,
                crossAxisCount: 3,
                children: [
                  Image.network(
                    'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                    height: 220,
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                    height: 220,
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                    height: 220,
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                    height: 220,
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                    height: 220,
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                    height: 220,
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                    height: 220,
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                    height: 220,
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                    height: 220,
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                    height: 220,
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                    height: 220,
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                    height: 220,
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                    height: 220,
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    fit: BoxFit.fill,
                  ),
                  Image.network(
                    'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                    height: 220,
                    width: MediaQuery.of(context).size.width / 2 - 30,
                    fit: BoxFit.fill,
                  ),
                ],
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
                  style: AppTextStyles.whiteButtonStyle,
                ),
                autofocus: true,
                style: ElevatedButton.styleFrom(
                    primary: AppColor.white,
                    side: BorderSide(color: AppColor.black, width: 2),
                    elevation: 0),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.add),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(CupertinoIcons.chat_bubble),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.person_outline),
          ),
        ],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: onTap,
      ),
    );
  }
}
