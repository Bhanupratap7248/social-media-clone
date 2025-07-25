import 'package:flutter_application_1/pages/edit_profile_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/main_page.dart';


class AppRouts {
 
   static final pages = {
    AppRouts.login: (context) =>  LoginPage(),
    AppRouts.home: (context) => HomePage(),
    AppRouts.main: (context) =>  MainPage(),
    AppRouts.editProfile : (context) =>  EditProfilePage(),
  };

  static const login = '/'; 
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
}