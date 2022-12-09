import 'package:flutter/material.dart';

class tarjeta_image extends StatelessWidget {
  const tarjeta_image({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //CORTA EL CONTENIDO DE LOS HIJO EN ESTE PONE LOS BORDES REDONDEADOS 
      clipBehavior: Clip.antiAlias,
      //redondea las tarjetas
      shape: RoundedRectangleBorder(
        borderRadius:BorderRadius.circular(20) ),
      elevation: 10,
      //color de la sombra junto con su intensidad de vista
      shadowColor:const  Color.fromARGB(255, 121, 32, 185).withOpacity(0.9),
      child: Column(
        children:   [
        const FadeInImage(
          
          placeholder: AssetImage('assets/loading.gif'), 
          image: NetworkImage('https://p4.wallpaperbetter.com/wallpaper/325/140/18/alone-stars-purple-background-hd-wallpaper-preview.jpg'),
          //toma todo el espacio disponible en la pantalla
          width: double.infinity,
          height: 230,
          //la imagen se adaptara a todo el espacio de la tarjeta
          fit: BoxFit.cover,
          //el tiempo que tardara en mostrarse la imagen
          fadeInDuration: Duration(milliseconds: 200),
          ),
          Container(
          )
        ]
      ),
    );
  }
}
