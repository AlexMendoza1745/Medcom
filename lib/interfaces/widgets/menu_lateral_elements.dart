import 'package:flutter/material.dart';
import 'package:medocom/interfaces/ejemplos/lista2.dart';
import 'package:medocom/interfaces/screen_principale/formulario.dart';
import 'package:medocom/models/exportaciones.dart';
class menu_lateral_elements extends StatelessWidget {
  const menu_lateral_elements({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView( 
        padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          child: Column(
            children: [
         Expanded(
           child: Image.asset('assets/medicamento.png'),
         ),
         const SizedBox(
           height: 10,
         ),
       
            ],
          ),
          decoration: const BoxDecoration(
            color: Colors.amber
          ),
        ),
        ListTile(
           leading: const Icon(Icons.home),
          title: const Text('home'),
          iconColor: Colors.indigo,
          onTap: () {       
              final route1 = MaterialPageRoute(builder: (context) => const Home());   
            Navigator.push(context, route1);
          },
        ),
         ListTile(
            leading: const Icon(Icons.import_contacts),
          title: const Text('contacto'),
         
          iconColor: Colors.indigo,
          onTap: () {       
              final route2 = MaterialPageRoute(builder: (context) => const Contacto());   
            Navigator.push(context, route2);
          },
        ),
         ListTile(
           leading: const Icon(Icons.medical_services),
          title: const Text('informacion medica'),
          iconColor: Colors.indigo,
          onTap: () {       
              final route3 = MaterialPageRoute(builder: (context) => const Informacion());   
            Navigator.push(context, route3);
          },
        ),
          
         ListTile(
            leading: const Icon(Icons.place),
          title: const Text('formulario'),
          iconColor: Colors.indigo,
          onTap: () {       
              final route5 = MaterialPageRoute(builder: (context) => const Formulario());   
            Navigator.push(context, route5);
          },
        ),
        ListTile(
            leading: const Icon(Icons.auto_fix_high),
          title: const Text('lista en produccion'),
          iconColor: Colors.indigo,
          onTap: () {       
              final route6 = MaterialPageRoute(builder: (context) => const lista2());   
            Navigator.push(context, route6);
          },
        )
      ],
     
    )
    );
  }
}