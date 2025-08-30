// Definición de la clase "Product"
// Sirve como "molde" u "objeto modelo" para representar un producto en una aplicación.
class Product {
  // Atributo: nombre del producto (ej: "Manzana")
  final String name;
 
  // Atributo: precio del producto (ej: 2.50)
  // "final" significa que una vez asignado no puede cambiar.
  final double price;
 
  // Atributo: cantidad del producto (ej: 3 manzanas)
  // Este valor sí puede cambiar, por eso no es "final".
  int quantity;
 
  // Constructor de la clase Product
  // "required" obliga a que siempre se pase un nombre y un precio.
  // "this.quantity = 1" establece que, si no se da un valor, la cantidad por defecto será 1.
  Product({required this.name, required this.price, this.quantity = 1});
}