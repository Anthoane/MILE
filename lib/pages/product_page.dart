import 'package:flutter/material.dart';
import '../services/product_service.dart';
import '../widgets/product_card.dart';
import '../models/product.dart';
 
// Definición de un widget con estado, es decir, que puede cambiar dinámicamente
class ProductsPage extends StatefulWidget {
  // Recibe una función como parámetro: qué hacer cuando se agrega un producto al carrito
  final void Function(Product) onAddToCart;
 
  // Constructor: requiere que se le pase la función onAddToCart
  const ProductsPage({super.key, required this.onAddToCart});
 
  @override
  State<ProductsPage> createState() => _ProductsPageState();
}
 
// Esta clase maneja el estado de ProductsPage
class _ProductsPageState extends State<ProductsPage> {
  // Controladores para los campos de texto (nombre y precio del producto)
  final _nameController = TextEditingController();
  final _priceController = TextEditingController();
 
  // Método que se ejecuta cuando el usuario quiere agregar un producto
  void _addProduct() {
    // Obtiene el nombre escrito por el usuario y elimina espacios extra
    final name = _nameController.text.trim();
 
    // Intenta convertir el texto ingresado en número (precio).
    // Si no se puede, asigna 0.
    final price = double.tryParse(_priceController.text) ?? 0;
 
    // Valida: el nombre no puede estar vacío y el precio debe ser mayor a 0
    if (name.isNotEmpty && price > 0) {
      setState(() {
        // Llama al servicio para agregar el producto a la lista
        productService.addProduct(Product(name: name, price: price));
      });
 
      // Limpia los campos de texto después de agregar el producto
      _nameController.clear();
      _priceController.clear();
    }
  }
 
  @override
  Widget build(BuildContext context) {
    // Obtiene la lista de productos almacenados en el servicio
    // "productService" es un objeto que maneja la lógica de productos
    // "products" será una lista de objetos tipo Product
    final products = productService.products;
 
    // Aquí normalmente se devuelve un widget (Scaffold, Column, ListView, etc.)
    // que usa "products" para mostrar en pantalla la lista de productos.
 
    return Scaffold(
      // "Scaffold" es un widget que da la estructura básica de una pantalla:
      // incluye barra superior (AppBar), contenido principal (body),
      appBar: AppBar(
        title: const Text("Gestión de Productos"),
        // opcional: acceso rápido al carrito (si quieres)
      ),
      body: Column(
        // El cuerpo de la pantalla (body) se organiza en una columna vertical
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              // Dentro del padding hay otra columna donde se colocan widgets en vertical
              children: [
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: "Nombre del producto",
                  ),
                ),
                const SizedBox(height: 16), // espacio de 16 pixeles
                TextField(
                  controller: _priceController,
                  decoration: const InputDecoration(labelText: "Precio"),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
 
                SizedBox(
                  width: double.infinity, // ocupa todo el ancho disponible
                  child: ElevatedButton(
                    onPressed: _addProduct,
                    child: const Text(
                      "Agregar producto",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (_, index) {
                final product = products[index];
                return ProductCard(
                  product: product,
                  // aquí usamos el callback pasado desde HomePage
                  onAddToCart: () {
                    widget.onAddToCart(product);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
 