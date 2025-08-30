import 'package:flutter/material.dart';
import 'pages/splash_page.dart';
import 'theme/app_theme.dart';
 
//punto de entrada principal
void main (){
runApp(const MyApp());
 
}
 
class MyApp extends StatelessWidget{
  const MyApp ({super.key});
 
  //metodo obligatorio
@override
Widget build (BuildContext context){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Gestion de productos",
    theme: AppTheme.lightTheme,
    home: const SplashPage(),
    initialRoute: "/home",
  );
}
}