import 'package:flutter/material.dart';

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

class HeroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/hero_image.jpg', // Cambia la imagen por tu ruta
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(color: Colors.black.withOpacity(0.4)),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Disfruta de los Mejores Productos de\nSuscripción de Chocolate',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Descubre un mundo de chocolate gourmet entregado a tu puerta.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

