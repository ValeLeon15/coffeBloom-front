import 'package:flutter/material.dart';

class CarritoPage extends StatefulWidget {
  @override
  _CarritoPageState createState() => _CarritoPageState();
}

class _CarritoPageState extends State<CarritoPage> {
  List<Map<String, dynamic>> carrito = [
    {'name': 'Cubo de cacao de origen campesino', 'price': 18.75, 'quantity': 1},
    {'name': '20 cubos de 11 gramos', 'price': 5.00, 'quantity': 2},
  ];

  String pais = 'Colombia'; // Por defecto Colombia
  double envio = 1.0; // valor inicial de envío

  @override
  Widget build(BuildContext context) {
    double subtotal = carrito.fold(0, (sum, item) => sum + (item['price'] * item['quantity']));
    double total = subtotal + envio;

    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito de Compras'),
        backgroundColor: Color(0xFFF8C191),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Listado de productos
            Expanded(
              child: ListView.builder(
                itemCount: carrito.length,
                itemBuilder: (context, index) {
                  var producto = carrito[index];
                  return Card(
                    child: ListTile(
                      title: Text(producto['name']),
                      subtitle: Text('\$${producto['price']} x ${producto['quantity']}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove_circle_outline),
                            onPressed: () {
                              setState(() {
                                if (producto['quantity'] > 1) {
                                  producto['quantity']--;
                                }
                              });
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.add_circle_outline),
                            onPressed: () {
                              setState(() {
                                producto['quantity']++;
                              });
                            },
                          ),
                          IconButton(
                            icon: Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              setState(() {
                                carrito.removeAt(index);
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            // Selección de país
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('País de envío: '),
                DropdownButton<String>(
                  value: pais,
                  onChanged: (value) {
                    setState(() {
                      pais = value!;
                      envio = (pais == 'Colombia') ? 1.0 : 4.0;
                    });
                  },
                  items: ['Colombia', 'Otro país'].map((p) {
                    return DropdownMenuItem<String>(
                      value: p,
                      child: Text(p),
                    );
                  }).toList(),
                ),
              ],
            ),

            SizedBox(height: 16),

            // Subtotal, envío y total
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Subtotal: \$${subtotal.toStringAsFixed(2)}', style: TextStyle(fontSize: 16)),
                Text('Envío: \$${envio.toStringAsFixed(2)}', style: TextStyle(fontSize: 16)),
                Divider(),
                Text(
                  'Total: \$${total.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Compra realizada correctamente')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2E4A2C),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              ),
              child: Text('PAGAR', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
