import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendario extends StatefulWidget {
  const Calendario({Key? key}) : super(key: key);
  static String ruta = 'calendar';

  @override
  State<Calendario> createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  CalendarFormat format = CalendarFormat.month;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Calendario'),
            centerTitle: true,
          ),
          body: Column(
            children: [
              TableCalendar(
                  focusedDay: DateTime.now(),
                  firstDay: DateTime(2021),
                  lastDay: DateTime(2050),
                  calendarFormat: format,
                  onFormatChanged: (CalendarFormat format2) {
                    setState(() {
                      format = format2;
                    });
                  }
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 57, 211, 228),
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                    onPressed: ()=>Navigator.pop(context), 
                    child: const Text('regresar')
                    )
            ],
          )
            
              ),
    );
  }
}
