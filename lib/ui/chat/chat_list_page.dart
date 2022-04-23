import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photogram_app/routes/app_routes.dart';
import 'package:photogram_app/theme/app_color.dart';
import 'package:photogram_app/theme/app_constants.dart';
import 'package:photogram_app/theme/app_text_styles.dart';

class ChatListPage extends StatefulWidget {
  const ChatListPage({Key? key}) : super(key: key);

  @override
  _ChatListPageState createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  int _selectedIndex = 3;

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
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.7,
                  ),
                ),
              ),
            )),
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColor.white,
        title: const Text(
          'Suxbatlar',
          style: TextStyle(color: AppColor.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: AppColor.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.pushNamed(
                      AppConstants.key.currentState!.context,
                      AppRoutes.chatPage);
                });
              },
              child: Card(
                elevation: 1,
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(300),
                    child: Image.network(
                        'https://i.pinimg.com/474x/be/d2/3f/bed23f26584cc6e9de5b673eb0864abd.jpg'),
                  ),
                  title: const Text(
                    'James',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  subtitle: Text('Thank you! That was very helpful'),
                ),
              ),
            ),
            Card(
              elevation: 1,
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Image.network(
                      'https://i.pinimg.com/474x/be/d2/3f/bed23f26584cc6e9de5b673eb0864abd.jpg'),
                ),
                title: const Text(
                  'James',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                subtitle: Text('Thank you! That was very helpful'),
              ),
            ),
            Card(
              elevation: 1,
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Image.network(
                      'https://i.pinimg.com/474x/be/d2/3f/bed23f26584cc6e9de5b673eb0864abd.jpg'),
                ),
                title: const Text(
                  'James',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                subtitle: Text('Thank you! That was very helpful'),
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
