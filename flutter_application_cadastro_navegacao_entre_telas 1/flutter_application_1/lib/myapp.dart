import 'package:flutter/material.dart';
import 'package:flutter_application_1/cadastro_page.dart';
import 'package:flutter_application_1/home_controller.dart';
//import 'package:flutter_application_1/home_page.dart';

//import 'home_page.dart';
//import 'login_page.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: HomeController(
        child: CadastroPage(),
        
      ),
      //initialRoute: '/home',
      //routes:{
      //  '/':(context) => LoginPage(),
      //  '/home':(context) => HomePage(),
     // },
    );
    }
  }