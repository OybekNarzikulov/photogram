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
              AppConstants.key.currentState!.context, AppRoutes.chatListPage);
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
            ClipRRect(
              borderRadius: BorderRadius.circular(300),
              child: Container(
                height: 120,
                child: Image.network(
                    'https://i.pinimg.com/474x/be/d2/3f/bed23f26584cc6e9de5b673eb0864abd.jpg'),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Umidaxon',
                style: AppTextStyles.otherTitles,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                '@umida12',
                style: AppTextStyles.userEmail,
              ),
            ),
            SizedBox(height: 10),
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
                  'XABAR',
                  style: AppTextStyles.whiteButtonStyle,
                ),
                autofocus: true,
                style: ElevatedButton.styleFrom(
                    primary: AppColor.white,
                    side: BorderSide(color: AppColor.black, width: 2),
                    elevation: 0),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 335,
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
            SizedBox(height: 10),
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
                  'KO\'PROQ KO\'RSATISH',
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
