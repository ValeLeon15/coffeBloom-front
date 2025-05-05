import 'package:flutter/material.dart';
import 'package:untitled/widgets/app_scaffold.dart';


class NuestroProductoPage extends StatelessWidget {
  const NuestroProductoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildBanner(context),
            _buildIntroSection(),
            _buildFeaturesSection(),
            _buildImpactSection(),
            _buildPreparationStepsSection(),
            _buildFlavorsSection(),
            _buildCTASection(),
          ],
        ),
      ),
    );
  }

  Widget _buildBanner(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/banner_brew.jpg',
          height: 400,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          height: 400,
          color: Colors.black.withOpacity(0.4),
        ),
        Positioned.fill(
          child: Center(
            child: Text(
              'Cacao Brew Cubes',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildIntroSection() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Text(
            'Una nueva forma de disfrutar el cacao ancestral.',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          SizedBox(height: 10),
          Text(
            'Cacao Brew Cubes mezcla saberes campesinos con un toque moderno, saludable y funcional.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.black87),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturesSection() {
    final features = [
      'Cacao artesanal',
      'Endulzantes naturales',
      'Presentación en cubos (10–12g)',
      'Fácil disolución',
      'Energía sin cafeína',
    ];

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Wrap(
        spacing: 18,
        runSpacing: 18,
        alignment: WrapAlignment.center,
        children: features
            .map((feature) => Chip(
                  label:
                      Text(feature, style: TextStyle(fontSize: 16, color: Colors.black87)),
                  backgroundColor: Color(0xFFF8C191),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ))
            .toList(),
      ),
    );
  }

  Widget _buildImpactSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Text(
        'Cada cubo apoya a comunidades rurales, promueve prácticas sostenibles y revaloriza nuestras raíces.',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 18, fontStyle: FontStyle.italic, color: Colors.black87),
      ),
    );
  }

  Widget _buildPreparationStepsSection() {
    final steps = [
      '1. Calienta 200 ml de agua o leche',
      '2. Agrega un cubo',
      '3. Revuelve y disfruta',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        children: [
          Text(
            'Modo de preparación',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          SizedBox(height: 12),
          ...steps.map((step) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  step,
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildFlavorsSection() {
    final flavors = [
      'Cacao + Canela & Naranja 🍊',
      'Cacao + Jengibre & Miel 🍯',
      'Cacao + Ají dulce 🌶️',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        children: [
          Text(
            'Sabores disponibles',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          SizedBox(height: 12),
          ...flavors.map((flavor) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(flavor,
                    style: TextStyle(fontSize: 16, color: Colors.black87)),
              )),
        ],
      ),
    );
  }

  Widget _buildCTASection() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF2E4A2C),
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 18),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        child: Text(
          'Suscríbete a la experiencia',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
