import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Plato {
  final String nombre;
  final double precio;
  final String imagenUrl;

  Plato({
    required this.nombre,
    required this.precio,
    required this.imagenUrl,
  });
}

class MyApp extends StatelessWidget {
  final List<Plato> listaPlatos = [
    Plato(
      nombre: 'Arroz Chaufa',
      precio: 25.40,
      imagenUrl:
          'assets/arroz_chaufa.jpg',
    ),
    Plato(
      nombre: 'Macarrones',
      precio: 26.00,
      imagenUrl:
        'assets/macarrones.jpg'
    ),
    Plato(
      nombre: 'Arroz con pato',
      precio: 43.00,
      imagenUrl:
        'assets/arroz_pato.jpg'
    ),
    Plato(
      nombre: 'Leche de tigre',
      precio: 19.00,
      imagenUrl:
        'assets/leche_tigre.jpg'
    ),
    Plato(
      nombre: 'Cebiche',
      precio: 20.00,
      imagenUrl:
        'assets/ceviche.jpg'
    ),
    Plato(
      nombre: 'Arroz con mariscos',
      precio: 50.80,
      imagenUrl:
        'assets/arroz_mariscos.jpg'
    ),
    Plato(
      nombre: 'Arroz con leche',
      precio: 15.50,
      imagenUrl:
        'assets/arroz_leche.jpg'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menú Restaurante',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menú Restaurante'),
        ),
        body: ListView.builder(
          itemCount: listaPlatos.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(
                listaPlatos[index].imagenUrl,
                width: 50,
                height: 50,
              ),
              title: Text(listaPlatos[index].nombre),
              subtitle: Text('S/${listaPlatos[index].precio.toStringAsFixed(2)}'),
              onTap: () {
                // Acción al hacer clic en este elemento
              },
            );
          },
        ),
      ),
    );
  }
}
