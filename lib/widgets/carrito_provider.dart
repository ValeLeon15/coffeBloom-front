class CarritoProvider {
  static final CarritoProvider _instance = CarritoProvider._internal();

  factory CarritoProvider() => _instance;

  CarritoProvider._internal();

  final List<Map<String, String>> _productos = [];

  List<Map<String, String>> get productos => _productos;

  void agregarProducto(Map<String, String> producto) {
    _productos.add(producto);
  }

  void vaciarCarrito() {
    _productos.clear();
  }
}
