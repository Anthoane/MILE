import '../models/product.dart';
 
// 🔹 Clase ProductService
// Se encarga de manejar la lista de productos disponibles y el carrito de compras.
// Es como la "lógica de negocio" que administra los datos.
class ProductService {
  // 📦 Lista privada de productos disponibles (inicialmente con algunos de ejemplo).
  final List<Product> _products = [
    Product(name: 'Manzana', price: 1.55),
    Product(name: 'Banana', price: 1.2),
    Product(name: 'Naranja', price: 2.0),
  ];
 
  // 📦 Lista privada que representa el carrito de compras.
  final List<Product> _cart = [];
 
  // 🔹 Getter: devuelve la lista de productos disponibles
  // pero en forma "inmodificable" para que no se pueda alterar desde fuera.
  List<Product> get products => List.unmodifiable(_products);
 
  // 🔹 Getter: devuelve la lista de productos en el carrito
  // también en forma inmodificable.
  List<Product> get cart => List.unmodifiable(_cart);
 
  // ➕ Método para agregar un producto a la lista de productos disponibles.
  void addProduct(Product p) {
    _products.add(p);
  }
 
  // 🛒 Método para agregar un producto al carrito.
  void addToCart(Product p) {
    _cart.add(p);
  }
 
  // ❌ Método para eliminar un producto del carrito.
  void removeFromCart(Product p) {
    _cart.remove(p);
  }
 
  // 🧹 Método para vaciar todo el carrito.
  void clearCart() {
    _cart.clear();
  }
 
  // 💰 Getter que calcula el total de la compra en el carrito.
  // Usa "fold" para sumar todos los precios.
  double get cartTotal => _cart.fold(0.0, (sum, p) => sum + (p.price));
}
 
// 🔹 Instancia única de ProductService (patrón Singleton simple).
// Así puede usarse en toda la app sin necesidad de crear muchas instancias.
final productService = ProductService();
 