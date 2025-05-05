import 'package:flutter/material.dart';

import 'carrito_provider.dart';

class HeroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildHeroBanner(context),
          _buildProductsSection(),
        ],
      ),
    );
  }

  Widget _buildHeroBanner(BuildContext context) {
    return Container(
      height: 500,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/cacao.jpeg',
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

  Widget _buildProductsSection() {
    final products = [
      {
        'image': 'assets/images/cajaCacaoOscuro.png',
        'name': 'Cubo de cacao de origen campesino',
        'price': '\$18.75',
      },
      {
        'image': 'assets/images/cajaCacaoClaro.png',
        'name': 'Cubo de cacao de origen comunitario',
        'price': '\$20.00',
      },
      {
        'image': 'assets/images/cajaCacaoCerrada.png',
        'name': '20 Cubos de 10 gramos',
        'price': '\$5.00',
      },
      {
        'image': 'assets/images/cajaCacaoCerrada.png',
        'name': '20 cubos de 11 gramos',
        'price': '\$5.00',
      },
      {
        'image': 'assets/images/cajaCacao12g.png',
        'name': '20 cubos de 12 gramos',
        'price': '\$5.00',
      },
      {
        'image': 'assets/images/dosCajasCacao.png',
        'name': 'cacao de origen campesino + cacao de origen comunitario ',
        'price': '\$13.00',
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Cada combinación rescata ingredientes típicos de distintas regiones.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 24), // espacio entre el grid y el texto

          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(), // usa el scroll exterior
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 0.7,
            ),
            itemBuilder: (context, index) {
              final product = products[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      product['image']!,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    product['name']!,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    product['price']!,
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      CarritoProvider().agregarProducto(product);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('${product['name']} agregado al carrito')),
                      );
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF2E4A2C),
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    ),
                    child: Text(
                      'AGREGAR AL CARRITO',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ],
              );
            },
          ),

        ],
      ),
    );
  }
}
