import 'package:flutter/material.dart';
import 'package:medocom/interfaces/widgets/menu_lateral_elements.dart';
import 'package:medocom/interfaces/widgets/titulo_botonesH.dart';

class Zona6 extends StatelessWidget {
  const Zona6({Key? key}) : super(key: key);

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
              'https://lh3.googleusercontent.com/p/AF1QipPVor1GngVmiwT4W6byvcOvE1qln95nsREtIY60=w600-k'), 
              nombre_hospital: 'IMSS Hospital General de Zona/MF 6 Ocotlan', 
              informacion_hospital: 'hospital imss'
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
                      url: '+523929220279',
                    ),
                    Botones(
                      icono: Icons.route,
                      nombre: 'crear ruta',
                    ),
                    Botones(
                        icono: Icons.web,
                        nombre: 'pagina web',
                        tipo: 'https:',
                        url:
                            '//imss.gob.mx/')
                  ],
                ),
              )
            ],
          )),
    );
  }
}