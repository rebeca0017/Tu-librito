
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/pages/login_page.dart';
import 'package:my_app/pages/principal_page.dart';
import 'package:my_app/pages/registro_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/principal',
      getPages: [
        GetPage(name: '/principal', page: ()=> PrincipalPage(image: 'assets/logo.jpeg')),
        GetPage(name: '/login', page: ()=>  LoginPage()),
        GetPage(name: '/registro', page: ()=> RegistroPage()),
      ],
         
    );
  }
}