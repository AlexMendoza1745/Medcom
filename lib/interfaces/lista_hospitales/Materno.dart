import 'package:flutter/material.dart';
import 'package:medocom/interfaces/widgets/menu_lateral_elements.dart';
import 'package:medocom/interfaces/widgets/titulo_botonesH.dart';

class Materno extends StatelessWidget {
  const Materno({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('hospitales'),
          ),
          drawer: const menu_lateral_elements(),
          body: Column(
            children: [
              const Titulo(imagen: NetworkImage(
              'https://lh5.googleusercontent.com/p/AF1QipNEZovcNEBwluGjy8LkznH8YMg13v5wD0vJCUP8=w408-h306-k-no'), 
              nombre_hospital: 'Hospital Materno Infantil', 
              informacion_hospital: 'Hospital infantil'
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:  const [
                    Botones(
                      icono: Icons.call,
                      nombre: 'llamar',
                      tipo: 'tel:',
                      url: '+523929227071',
                    ),
                    Botones(
                      icono: Icons.route,
                      nombre: 'crear ruta',
                    ),
                    Botones(
                        icono: Icons.web,
                        nombre: 'inexistente',
                       )
                  ],
                ),
              )
            ],
          )),
    );
  }
}