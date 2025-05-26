import 'package:flutter/material.dart';

class TrazabilidadPage extends StatelessWidget{
  TrazabilidadPage({Key? key}) : super(key: key);

final List<Map<String, String>> historial = [
  {
    "fecha": "2025-05-01",
    "evento": "Cosecha de granos de cacao en finca 'El Paraíso', Huila - Colombia"
  },
  {
    "fecha": "2025-05-03",
    "evento": "Fermentación y secado natural del cacao durante 7 días"
  },
  {
    "fecha": "2025-05-06",
    "evento": "Transporte de granos a cooperativa local para molienda y procesamiento"
  },
  {
    "fecha": "2025-05-08",
    "evento": "Elaboración artesanal de cubitos de cacao con diferentes sabores naturales"
  },
  {
    "fecha": "2025-05-10",
    "evento": "Empaque biodegradable con sello de comercio justo y denominación de origen"
  },
  {
    "fecha": "2025-05-12",
    "evento": "Exportado desde Puerto de Cartagena a Hamburgo, Alemania"
  },
  {
    "fecha": "2025-05-15",
    "evento": "Validado en blockchain: trazabilidad y autenticidad aseguradas"
  },
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Historial de trazabilidad del ultimo lote producido"),
        backgroundColor: Color(0xFFF8C191),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Producto: Cacao Brew Cubes',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Divider(),
            Expanded(
              child: ListView.separated(
                itemCount: historial.length,
                separatorBuilder: (_, __) => Divider(),
                itemBuilder: (context, index) {
                  final item = historial[index];
                  return ListTile(
                    leading: Icon(Icons.check_circle_outline, color: Colors.green),
                    title: Text(item["evento"]!),
                    subtitle: Text("Fecha: ${item["fecha"]}"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}