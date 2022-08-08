import 'package:colocho_store/column.dart';
import 'package:colocho_store/home.dart';
import 'package:colocho_store/row.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/foundation/key.dart';
//import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                SizedBox(
                  width: 270,
                  height: 56,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Usuario",
                      hintText: 'Enter your email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 28),
                SizedBox(
                  width: 270,
                  height: 56,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Contraseña",
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 22),
                Text(
                  "Olvidaste tu contrseña",
                  style: TextStyle(
                      color: Color(0xFF09ADEA),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 65),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Otros métodos de autenticación",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: 278.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Ink(
                        width: 54.0,
                        height: 54.0,
                        decoration: const ShapeDecoration(
                          color: Color(0xFF1877F2),
                          shape: CircleBorder(),
                          shadows: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 2),
                              blurRadius: 3.0,
                            ),
                          ],
                        ),
                        child: IconButton(
                          padding: const EdgeInsets.all(10.0),
                          icon: const Icon(Icons.facebook),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ColumnScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Ink(
                        width: 54.0,
                        height: 54.0,
                        decoration: const ShapeDecoration(
                          color: Colors.white,
                          shape: CircleBorder(),
                          shadows: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 2),
                              blurRadius: 3.0,
                            ),
                          ],
                        ),
                        child: IconButton(
                          padding: const EdgeInsets.all(10.0),
                          icon: const Image(
                              image: AssetImage(
                                  'assets/images/icons/google_logo.png')),
                          color: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RowScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      Ink(
                        width: 54.0,
                        height: 54.0,
                        decoration: const ShapeDecoration(
                          color: Colors.black,
                          shape: CircleBorder(),
                          shadows: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 2),
                              blurRadius: 3.0,
                            ),
                          ],
                        ),
                        child: IconButton(
                          padding: const EdgeInsets.all(10.0),
                          icon: const Icon(Icons.apple),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 82.0,
                ),
                SizedBox(
                  width: 278,
                  height: 46,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          const Color(0xFF006684),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ),
                      );
                    },
                    child: const Text('Iniciar Sesion'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
