import 'package:flutter/material.dart';

class Botton_Navigation extends StatelessWidget {
  const Botton_Navigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: const Color.fromARGB(255, 244, 54, 86),
      backgroundColor: Color.fromARGB(255, 45, 47, 47),
      
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: 'Info'
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
          ),
          BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Configuracion'
          )
      ],
    );
  }
}