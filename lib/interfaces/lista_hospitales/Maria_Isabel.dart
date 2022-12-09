import 'package:flutter/material.dart';
import 'package:medocom/interfaces/widgets/menu_lateral_elements.dart';
import 'package:medocom/interfaces/widgets/titulo_botonesH.dart';

class Maria_Isabel extends StatelessWidget {
  const Maria_Isabel({Key? key}) : super(key: key);

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
              nombre_hospital: 'Laboratorio y Rx Hopital Maria Isabel', 
              informacion_hospital: 'Hospital · Laboratorio médico'
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
                      url: '+523929257064',
                    ),
                    Botones(
                      icono: Icons.route,
                      nombre: 'crear ruta',
                    ),
                    Botones(
                        icono: Icons.web,
                        nombre: 'facebook',
                        tipo: 'https:',
                        url:
                            '//www.facebook.com/pages/Hospital-Maria-Isabel-Ocotlan/267962969945583?fref=ts/')
                  ],
                ),
              )
            ],
          )),
    );
  }
}