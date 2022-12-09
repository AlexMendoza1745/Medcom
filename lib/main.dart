import 'package:flutter/material.dart';
import 'package:medocom/interfaces/temas/app_theme.dart';
import 'package:medocom/router/rutas.dart';
import 'package:medocom/services/informacionM_services.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp( const AppState());
}
class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ )=>informacionM_services())
      ],
      child: const Myapp(),
    );
  }
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          
        ),
        initialRoute: AppRutas.initialRoute,
        routes: AppRutas.getAppRoute(),
        onGenerateRoute: AppRutas.onGenerateRoute,
        
        );
  }
}
