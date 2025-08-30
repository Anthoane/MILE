import 'package:flutter/material.dart';
import '../models/product.dart';
 
// 🔹 Widget CartPage (pantalla del carrito)
// Es un widget sin estado (StatelessWidget) porque recibe los datos desde fuera.
class CartPage extends StatelessWidget {
  // Lista de productos que están en el carrito
  final List<Product> cartItems;
 
  // Función que se ejecutará al eliminar un producto del carrito
  // Recibe un "Product" como parámetro
  final void Function(Product) onRemove;
 
  // Constructor del widget: recibe los productos y la función de eliminar
  const CartPage({super.key, required this.cartItems, required this.onRemove});
 
  @override
  Widget build(BuildContext context) {
    // 🛑 Caso 1: si el carrito está vacío, muestra un mensaje centrado
    if (cartItems.isEmpty) {
      return const Scaffold(
        body: Center(child: Text("El carrito está vacío 🛒")),
      );
    }
 
    // 💰 Caso 2: si hay productos, calculamos el total del carrito
    final total = cartItems.fold<double>(0, (s, p) => s + p.price);
 
    // Mostramos la pantalla del carrito
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrito"),
      ), // Título en la parte superior
      // 📋 Lista de productos dentro del carrito
      body: ListView.builder(
        itemCount: cartItems.length, // Cantidad de productos en el carrito
        itemBuilder: (_, i) {
          final p = cartItems[i]; // Producto actual
 
          // Cada producto se muestra en un ListTile
          return ListTile(
            title: Text(p.name), // Nombre del producto
            subtitle: Text(
              "S/ ${p.price.toStringAsFixed(2)}",
            ), // Precio con 2 decimales
            trailing: IconButton(
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ), // Botón eliminar ❌
              onPressed: () =>
                  onRemove(p), // Ejecuta la función que elimina este producto
            ),
          );
        },
      ),
 
      // 🔽 Parte inferior: muestra el total a pagar
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          'Total: S/ ${total.toStringAsFixed(2)}', // Total del carrito
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}