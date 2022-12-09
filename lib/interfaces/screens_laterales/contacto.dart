import 'package:flutter/material.dart';
import 'package:medocom/interfaces/widgets/menu_lateral_elements.dart';

class Contacto extends StatelessWidget {
  const Contacto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('formulario de recetas'),
        ),
        drawer: const menu_lateral_elements(),
        body: Column(
          children:const [
            SizedBox(height: 10),
          Center(
              child: CircleAvatar(
                maxRadius: 70,
                backgroundImage: NetworkImage('https://st2.depositphotos.com/3889193/7657/i/950/depositphotos_76570869-stock-photo-confident-female-doctor-posing-in.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
