import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo Con Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido a mi App'),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '¡Hola Mundo!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 250.0,
              width: 350.0,
              child: Image.asset('assets/hazz.jpg'),
            ), // Agrega la coma aquí

            SizedBox(height: 20),
            Image.network(
              'https://ejemplo.com/imagen.jpg',
              height: 150,
            ),
            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                'Contenedor Azul',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),

            // Widgets de Diseño
            Card(
              elevation: 3,
              margin: EdgeInsets.all(16.0),
              child: ListTile(
                title: Text('Ejemplo De Targeta'),
                subtitle: Text('Aqui la la descripcion...'),
                leading: Icon(Icons.star),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 30,
                ),
                Icon(
                  Icons.thumb_up,
                  color: Colors.blue,
                  size: 30,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 30,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.green,
              height: 100,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Contenedor Verde',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
