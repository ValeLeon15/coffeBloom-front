import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget body;

  const AppScaffold({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Column(
          children: [
            Container(
              color: Color(0xFF2E4A2C),
              width: double.infinity,
              padding: EdgeInsets.all(8),
              child: Center(
                child: Text(
                  '¡Bienvenido/a a nuestra tienda online de cacao local!',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              color: Color(0xFFF8C191),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/'),
                    child: Text('INICIO', style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(width: 16),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/nuestro-producto'),
                    child: Text('NUESTRO PRODUCTO', style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(width: 16),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/suscripciones'),
                    child: Text('SUSCRIPCIONES', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: body,
    );
  }
}
