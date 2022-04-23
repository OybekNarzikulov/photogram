import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photogram_app/routes/app_routes.dart';
import 'package:photogram_app/theme/app_color.dart';
import 'package:photogram_app/theme/app_constants.dart';
import 'package:photogram_app/theme/app_text_styles.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex) {
        case 1:
          Navigator.pushNamed(
              AppConstants.key.currentState!.context, AppRoutes.searchPage);
          break;
        case 3:
          Navigator.pushNamed(
              AppConstants.key.currentState!.context, AppRoutes.chatListPage);
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
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              alignment: Alignment.centerLeft,
              child: const Text(
                'photogram',
                style: AppTextStyles.otherTitles,
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).size.height * 0.7 + 20,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Image.network(
                          'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                          height: 220,
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.network(
                          'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                          height: 310,
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.network(
                          'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                          height: 220,
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.network(
                          'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                          height: 310,
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Image.network(
                          'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                          height: 310,
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.network(
                          'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                          height: 220,
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.network(
                          'https://www.teahub.io/photos/full/55-558274_aesthetic-photography-pinterest-background.jpg',
                          height: 310,
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: 10,
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
                ],
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
