import 'package:colocho_store/home.dart';
import 'package:colocho_store/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); //Corre la aplicacion
}

//Todo en flutter es un widget
//StatelessWidget es un widget sin estado utilizado como para partes como el nombre
//StatefulWidget es un widget que puede ir cambiando como el contador de la aplicacion

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Colocho Store',
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
        textTheme: const TextTheme(
          headline5: TextStyle(color: Colors.white),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
