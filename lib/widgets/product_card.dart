import 'package:flutter/material.dart';
import '../../models/product.dart';
 
// 🔹 Widget personalizado que representa la tarjeta de un producto
// Muestra su nombre, precio y un botón para añadirlo al carrito.
class ProductCard extends StatelessWidget {
  // Objeto del producto que se va a mostrar en la tarjeta
  final Product product;
 
  // Callback (función) que se ejecuta cuando se presiona el botón de "agregar al carrito".
  // Es opcional (por eso el signo de interrogación "?").
  final VoidCallback? onAddToCart;
 
  // Constructor del widget
  // - "product" es obligatorio (required)
  // - "onAddToCart" es opcional
  // - "super.key" es para optimización de Flutter con las claves de los widgets
  const ProductCard({super.key, required this.product, this.onAddToCart});
 
  // Método que construye la interfaz gráfica del widget
  @override
  Widget build(BuildContext context) {
    return Card(
      // 📦 Muestra un contenedor con estilo de tarjeta
      child: ListTile(
        // 📋 Un elemento de lista preformateado
        title: Text(product.name),
        subtitle: Text('Precio: S/ ${product.price.toStringAsFixed(2)}'),
        trailing: IconButton(
          icon: const Icon(Icons.add_shopping_cart, color: Colors.green),
          onPressed: onAddToCart,
        ),
      ),
    );
  }
}