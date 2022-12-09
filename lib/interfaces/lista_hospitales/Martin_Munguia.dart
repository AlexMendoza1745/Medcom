import 'package:flutter/material.dart';
import 'package:medocom/interfaces/widgets/menu_lateral_elements.dart';
import 'package:medocom/interfaces/widgets/titulo_botonesH.dart';

class Martin_Munguia extends StatelessWidget {
  const Martin_Munguia({Key? key}) : super(key: key);

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
              'https://streetviewpixels-pa.googleapis.com/v1/thumbnail?panoid=7iae0TbAv-d3oofYZMB8Kg&cb_client=search.gws-prod.gps&w=408&h=240&yaw=161.12984&pitch=0&thumbfov=100'), 
              nombre_hospital: 'Hospital Dr. Martín Munguía G', 
              informacion_hospital: 'informacion_hospital'
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
                      url: '+523929220777',
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