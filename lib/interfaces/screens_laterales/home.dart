

import 'package:flutter/material.dart';
import 'package:medocom/interfaces/widgets/background.dart';
import 'package:medocom/interfaces/widgets/botton_navigation.dart';
import 'package:medocom/interfaces/widgets/menu_lateral_elements.dart';
import 'package:medocom/tarjetas/tarjetas_home.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 58, 58, 58)
        )
      ),
      home: Scaffold(
        
        appBar: AppBar(
          
          title: const Text('home'),
          
        ),
        drawer: const menu_lateral_elements(),
        body:  Stack(
children: const [
  Background(),
  HomeBody(),
  Tarjetas_home()
],

        ),
        bottomNavigationBar:const  Botton_Navigation(),
        ),
        );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      

    );
  }
}