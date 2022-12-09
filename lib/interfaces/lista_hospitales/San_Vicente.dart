import 'package:flutter/material.dart';
import 'package:medocom/interfaces/widgets/menu_lateral_elements.dart';
import 'package:medocom/interfaces/widgets/titulo_botonesH.dart';

class San_Vicente extends StatelessWidget {
  const San_Vicente({Key? key}) : super(key: key);

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
              'https://lh5.googleusercontent.com/p/AF1QipPO5h71Qvk-qyMeTsreg4qG3Dk4uMukngCNAP0y=w408-h725-k-no'), 
              nombre_hospital: 'Hospital de San Vicente Ocotlán', 
              informacion_hospital:'no hay informacion disponible'
          
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
                      url: '+523929221150',
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
                            '//www.hsv.com.mx/')
                  ],
                ),
              )
            ],
          )),
    );
  }
}