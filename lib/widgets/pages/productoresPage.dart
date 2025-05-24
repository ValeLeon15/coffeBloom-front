import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class ProductoresPage extends StatelessWidget {
  const ProductoresPage({Key? key}) : super(key: key);

  final List<Map<String, String>> productores = const [
    {
      "nombre": "Coopecacao Afro",
      "descripcion": "Cooperativa de Productores de Cacao y Servicios Múltiples del Caribe Sur R.L., que trabaja con agricultores descendientes de las personas originarias de la zona, promoviendo la agricultura ancestral."
    },
    {
      "nombre": "ASOPAC (Guatuso)",
      "descripcion": "Asociación de Productores de Cacao Agro-Ambientalistas que impulsa un plan agroambiental basado en el cultivo del cacao."
    },
    {
      "nombre": "APPTA",
      "descripcion": "Asociación de Pequeños Productores de Talamanca, con enfoque en agricultura orgánica y desarrollo sostenible."
    },
    {
      "nombre": "Canacacao",
      "descripcion": "Cámara Nacional de Cacao Fino de Costa Rica, que agrupa a actores clave del mundo del cacao y el chocolate."
    },
    {
      "nombre": "COOPECAB R.L.",
      "descripcion": "Cooperativa de indígenas Bribri que comercializa cacao y abacá."
    },
    {
      "nombre": "ASOPAC (San Ramón)",
      "descripcion": "Organización con el mismo nombre en otra región."
    },
    {
      "nombre": "APPCU",
      "descripcion": "Asociación de Pequeños Productores de Cacao de Upala."
    },
    {
      "nombre": "IN-PAC",
      "descripcion": "Instituto Nacional de Productores de Cacao, que promueve la producción y comercialización del cacao."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo con imagen
          SizedBox.expand(
            child: Image.asset(
              'assets/images/cacao_banner.png',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.6),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                AppBar(
                  title: const Text('Productores de Cacao'),
                  backgroundColor: Colors.brown.withOpacity(0.9),
                  elevation: 0,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: ListView(
                      children: [
                        const Text(
                          'En Costa Rica, comunidades campesinas y poblaciones vulnerables como afrocaribeños, mestizos e indígenas Bribris, Cabécares y Ngöbe Buglé están involucradas en la producción del cacao. Estas comunidades juegan un papel esencial en regiones como Talamanca, Upala y Limón.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ...productores.asMap().entries.map((entry) {
                          return _buildCard(entry.value, entry.key);
                        }).toList(),
                        const SizedBox(height: 20),
                        const Text(
                          'Estas organizaciones desempeñan un rol clave en el empoderamiento de las comunidades y en la construcción de una cadena de valor justa, inclusiva y sostenible para el cacao costarricense.',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCard(Map<String, String> productor, int index) {
    final iconList = [
      Icons.grass,
      Icons.groups,
      Icons.eco,
      Icons.forest,
      Icons.handshake,
      Icons.public,
      Icons.energy_savings_leaf,
      Icons.nature_people
    ];

    return FadeInUp(
      duration: Duration(milliseconds: 300 + (index * 100)),
      child: Card(
        color: Colors.white.withOpacity(0.95),
        margin: const EdgeInsets.symmetric(vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 6,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                iconList[index % iconList.length],
                color: Colors.brown,
                size: 32,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productor['nombre'] ?? '',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.brown,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      productor['descripcion'] ?? '',
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
