import 'package:flutter/material.dart';


// ---------------- HEADER ----------------
class HeaderWidget extends StatelessWidget {
  final Color headerColor = Color(0xFFF8C191);
  final Color navBarColor = Color(0xFF2E4A2C);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: navBarColor,
          width: double.infinity,
          padding: EdgeInsets.all(8),
          child: Center(
            child: Text(
              '¡Bienvenido/a a nuestra tienda online de cacao local!',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          color: headerColor,
          height: 80,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.search),
              Row(
                children: [
                  navItem('BARRAS'),
                  navItem('TÉ'),
                  navItem('TRUFAS'),
                  navItem('PAQUETES'),
                  navItem('SUSCRIPCIONES'),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.person_outline),
                  SizedBox(width: 10),
                  Icon(Icons.shopping_cart_outlined),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget navItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Text(text,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
    );
  }
}

