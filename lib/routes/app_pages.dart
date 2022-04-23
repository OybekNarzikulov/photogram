import 'package:photogram_app/ui/main/main_page.dart';
import 'package:photogram_app/ui/search/search_page.dart';

import '../ui/account/account_page.dart';
import '../ui/chat/chat_list_page.dart';
import '../ui/chat/chat_page.dart';
import './app_routes.dart';
import '../ui/home/home_page.dart';
import '../ui/registration_1/registration_page_1.dart';
import '../ui/registration_2/registration_page_2.dart';
import '../ui/user_login/login_page.dart';

class AppPages {
  static final page = {
    AppRoutes.home: (context) => const HomePage(),
    AppRoutes.registration_1: (context) => const RegistationPage_1(),
    AppRoutes.registration_2: (context) => const RegistationPage_2(),
    AppRoutes.loginPage: (context) => const LoginPage(),
    AppRoutes.mainPage: (context) => const MainPage(),
    AppRoutes.searchPage: (context) => const SearchPage(),
    AppRoutes.accountPage: (context) => const AccountPage(),
    AppRoutes.chatListPage: (context) => const ChatListPage(),
    AppRoutes.chatPage: (context) => const ChatPage(),

  };
}
