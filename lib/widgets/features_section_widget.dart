import 'package:flutter/material.dart';

class FeaturesSectionWidget extends StatelessWidget {
  final List<Map<String, String>> features = [
    {'icon': 'V', 'label': 'Vegan'},
    {'icon': 'GF', 'label': 'Gluten Free'},
    {'icon': '', 'label': 'Non GMO'},
    {'icon': 'SF', 'label': 'Soy Free'},
    {'icon': '⭐', 'label': 'Puerto Rican Grown'},
    {'icon': '📍', 'label': 'Single Origin'},
    {'icon': '🤝', 'label': 'Direct Trade'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          'Ingredientes de Cacao de Alta Calidad',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        SizedBox(height: 20),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 20,
          runSpacing: 20,
          children: features.map((feature) {
            return Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey.shade200,
                  child: Text(
                    feature['icon']!,
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.green.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  feature['label']!,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            );
          }).toList(),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            '¡Conoce las diferentes categorías de cacao y amplía tu conocimiento sobre este delicioso alimento!',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _iconBox(Icons.grid_view),
            _iconBox(Icons.blur_circular),
            _iconBox(Icons.brightness_7),
            _iconBox(Icons.local_shipping),
            _iconBox(Icons.loop),
          ],
        ),
      ],
    );
  }

  Widget _iconBox(IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 230,
        height: 230,
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, color: Color(0xFFF8C191), size: 50),
      ),
    );
  }
}
