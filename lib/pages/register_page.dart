import 'package:flutter/material.dart';
 
// 📌 RegisterPage es un "StatefulWidget", es decir,
// un widget con estado que puede cambiar durante la ejecución de la app.
// Se usará para mostrar un formulario de registro.
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
 
  // Este método crea el estado asociado a RegisterPage
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}
 
// 📌 La clase _RegisterPageState maneja el estado del formulario.
// Aquí se define la lógica y los controladores para los campos de texto.
class _RegisterPageState extends State<RegisterPage> {
  // Clave global para identificar el formulario y validar sus campos
  final _formKey = GlobalKey<FormState>();
 
  // Controladores que permiten acceder y manipular
  // el texto escrito en los campos de formulario
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    // 📌 Scaffold: estructura visual básica de Flutter (pantalla con AppBar y cuerpo)
    return Scaffold(
      // Barra superior con el título "Registro"
      appBar: AppBar(title: const Text("Registro")),
 
      // SafeArea: asegura que el contenido no se superponga
      // con elementos del sistema (notch, barra de estado, etc.)
      body: SafeArea(
        // SingleChildScrollView: permite que el contenido sea desplazable
        // en caso de que no quepa en la pantalla (ej: teclado abierto).
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16), // margen interno uniforme
          child: Form(
            key: _formKey, // clave para validar el formulario
            child: Column(
              children: [
                const SizedBox(height: 16), // espacio entre elementos
                // 📌 Título de la página
                const Text(
                  "Registro de Usuario",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
 
                const SizedBox(height: 24), // más espacio
                // 📌 Campo de texto para el correo electrónico
                TextFormField(
                  controller: _emailController, // enlazado al controlador
                  decoration: const InputDecoration(
                    labelText: "Correo electrónico", // texto de guía
                    border: OutlineInputBorder(), // borde visible
                    prefixIcon: Icon(Icons.email), // icono a la izquierda
                  ),
                  // Validador: define reglas de validación del campo
                  validator: (v) {
                    if (v == null || v.isEmpty) return "Ingrese un correo";
                    if (!v.contains("@")) return "Correo inválido";
                    return null; // válido
                  },
                ),
 
                const SizedBox(height: 16),
 
                // 📌 Campo de texto para la contraseña
                TextFormField(
                  controller: _passwordController,
                  obscureText: true, // oculta caracteres (****)
                  decoration: const InputDecoration(
                    labelText: "Contraseña",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                  validator: (v) {
                    if (v == null || v.isEmpty) return "Ingrese una contraseña";
                    if (v.length < 6) return "Debe tener mínimo 6 caracteres";
                    return null;
                  },
                ),
 
                const SizedBox(height: 16),
 
                // 📌 Campo para confirmar la contraseña
                TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Confirmar contraseña",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock_outline),
                  ),
                  validator: (v) {
                    if (v != _passwordController.text) {
                      return "Las contraseñas no coinciden";
                    }
                    return null;
                  },
                ),
 
                const SizedBox(height: 24),
 
                // 📌 Botón de registro
                SizedBox(
                  width: double.infinity, // ocupa todo el ancho disponible
                  child: ElevatedButton(
                    onPressed: () {
                      // Se ejecuta cuando se presiona el botón
                      if (_formKey.currentState!.validate()) {
                        // Si el formulario pasa todas las validaciones...
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Registro exitoso 🎉")),
                        );
                      }
                    },
                    child: const Text("Registrarse"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 