import 'package:flutter/material.dart';
import 'product_page.dart';
import 'cart_page.dart';
import 'login_page.dart';
import 'register_page.dart';
import '../models/product.dart';
import 'offers_page.dart';
 
class HomePage extends StatefulWidget {
  const HomePage({super.key});
 
  @override
  State<HomePage> createState() => _HomePageState();
}
 
class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
 
  // Aquí guardamos el carrito (misma lista compartida)
  final List<Product> _cartItems = [];
 
  void _onItemTapped(int index) => setState(() => _selectedIndex = index);
 
  // callback que pasamos a ProductsPage
  void _handleAddToCart(Product p) {
    setState(() {
      _cartItems.add(p);
    });
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('${p.name} añadido al carrito')));
  }
 
  // Este método devuelve un widget que representa la pestaña "Perfil"
  // donde el usuario puede ver opciones de cuenta (login o registro).
  Widget _buildProfileTab(BuildContext context) {
    return Center(
      // Centra todo el contenido en la pantalla
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ), // Márgenes laterales
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centra verticalmente la columna
          children: [
            // Ícono grande de perfil (usuario)
            const Icon(Icons.person, size: 80, color: Colors.blueGrey),
            const SizedBox(height: 16), // Espaciado
            // Texto de título
            const Text(
              "Opciones de cuenta",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32), // Más espaciado antes de los botones
            // Botón de "Iniciar sesión"
            SizedBox(
              width: double.infinity, // Ocupa todo el ancho disponible
              child: ElevatedButton.icon(
                icon: const Icon(Icons.login), // Ícono de login
                label: const Text("Iniciar sesión"), // Texto del botón
                onPressed: () {
                  // Navegación hacia la página de Login
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginPage()),
                  );
                },
              ),
            ),
            const SizedBox(height: 12), // Espaciado entre botones
            // Botón de "Registrarse"
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                icon: const Icon(Icons.app_registration), // Ícono de registro
                label: const Text("Registrarse"),
                onPressed: () {
                  // Navegación hacia la página de Registro
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const RegisterPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
 
  // Construye la página activa cada vez (evitamos usar una lista const)
  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        // return const Center(child: Text("🏠 Bienvenido al Mini Market"));
        //Después de modificar el pubspec.yaml, corre: flutter pub get
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Texto de bienvenida arriba
                const Text(
                  "Bienvenido a Market Ponti",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Todos tus productos en un solo lugar",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
                const SizedBox(height: 20),
 
                // Banner con imagen
                Container(
                  width: double.infinity,
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/compras.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
 
                // Botón que ocupa casi toda la pantalla
                SizedBox(
                  // 📏 El ancho se expande para ocupar todo el espacio disponible
                  width: double.infinity,
                  // 📏 La altura se define para ser más grande
                  height: 50,
                  child: ElevatedButton(
                    // Estilo elegante
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 222, 5, 5),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const OffersPage()),
                      );
                    },
                    child: const Text(
                      "Ver Ofertas",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
 
      case 1:
        // pasamos el callback para añadir al carrito
        return ProductsPage(onAddToCart: _handleAddToCart);
      case 2:
        // pasamos la lista de carrito para que CartPage la muestre
        return CartPage(
          cartItems: _cartItems,
          onRemove: (product) {
            setState(() {
              _cartItems.remove(product); // 👈 elimina el producto de la lista
            });
          },
        );
 
      case 3:
      default:
        return _buildProfileTab(context);
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 🔹 Barra superior de la aplicación
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 237, 237, 237),
        title: const Text("Mini Market"),
      ),
 
      // 🔹 El contenido principal del cuerpo de la pantalla
      body: _buildBody(),
 
      // 🔹 Barra de navegación inferior (tabs)
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // índice de la pestaña seleccionada
        onTap: _onItemTapped, // función que se ejecuta al tocar un ítem
        type: BottomNavigationBarType.fixed, // evita el efecto "shifting"
        // 🔹 Ítems de la barra inferior
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "Productos"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Carrito",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
        ],
      ),
    );
  }
}
 