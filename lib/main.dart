import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eventos Deportivos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('EVENTOS DEPORTIVOS'),
        ),
        body: EventosList(),
      ),
    );
  }
}

class Evento {
  final String imagen;
  final String nombre;
  final String deporte;
  final String fecha;
  final String ubicacion;

  Evento({
    required this.imagen,
    required this.nombre,
    required this.deporte,
    required this.fecha,
    required this.ubicacion,
  });
}

class EventosList extends StatelessWidget {
  final List<Evento> eventos = [
    Evento(
      imagen: 'assets/primera.png',
      nombre: 'Maratón de Boston',
      deporte: 'Atletismo',
      fecha: '15 de Abril de 2024',
      ubicacion: 'Boston, USA',
    ),
    Evento(
      imagen: 'assets/segunda.png',
      nombre: 'Final de la Champions League',
      deporte: 'Fútbol',
      fecha: '28 de Mayo de 2024',
      ubicacion: 'Estambul, Turquía',
    ),
    Evento(
      imagen: 'assets/tercer.png',
      nombre: 'Gran Premio de Mónaco',
      deporte: 'Fórmula 1',
      fecha: '26 de Mayo de 2024',
      ubicacion: 'Mónaco',
    ),
    Evento(
      imagen: 'assets/cuarto.png',
      nombre: 'Wimbledon',
      deporte: 'Tenis',
      fecha: '1 de Julio de 2024',
      ubicacion: 'Londres, Reino Unido',
    ),
    Evento(
      imagen: 'assets/quinto.png',
      nombre: 'Tour de Francia',
      deporte: 'Ciclismo',
      fecha: '6 de Julio de 2024',
      ubicacion: 'Francia',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: eventos.length,
      itemBuilder: (context, index) {
        final evento = eventos[index];
        return Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.all(10),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(evento.imagen),
                SizedBox(height: 10),
                Text(
                  evento.nombre,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Deporte: ${evento.deporte}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 5),
                Text(
                  'Fecha: ${evento.fecha}',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 5),
                Text(
                  'Ubicación: ${evento.ubicacion}',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}



