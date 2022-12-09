import 'package:flutter/material.dart';
import 'package:medocom/interfaces/widgets/menu_lateral_elements.dart';
import 'package:medocom/tarjetas/tarjeta.dart';
import 'package:medocom/tarjetas/tarjeta_image.dart';

class lista2 extends StatelessWidget {
  const lista2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('lista de prueba'),
        ),
        drawer: menu_lateral_elements(),
body: ListView.builder(
  itemBuilder: (BuildContext context, int index) => tarjeta_image(),
  itemCount: 5,
  
  ),
      ),
    );
  }
}