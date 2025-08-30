import 'package:flutter/material.dart';
 
// Página de login (Stateful porque cambia de estado)
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
 
  @override
  State<LoginPage> createState() => _LoginPageState();
}
 
class _LoginPageState extends State<LoginPage> {
  // Clave para validar el formulario
  final _formKey = GlobalKey<FormState>();
  // Controladores para obtener el texto ingresado
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")), // Barra superior
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey, // Se asocia al formulario
            child: Column(
              children: [
                const SizedBox(height: 16),
                const Text(
                  "Iniciar Sesión", // Título principal
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 24),
 
                // Campo de correo
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: "Correo electrónico",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                  validator: (v) {
                    if (v == null || v.isEmpty) return "Ingrese su correo";
                    if (!v.contains("@")) return "Correo inválido";
                    return null;
                  },
                ),
 
                const SizedBox(height: 16),
 
                // Campo de contraseña
                TextFormField(
                  controller: _passwordController,
                  obscureText: true, // Ocultar texto
                  decoration: const InputDecoration(
                    labelText: "Contraseña",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                  validator: (v) {
                    if (v == null || v.isEmpty) return "Ingrese su contraseña";
                    if (v.length < 6) return "Debe tener al menos 6 caracteres";
                    return null;
                  },
                ),
 
                const SizedBox(height: 24),
 
                // Botón ingresar
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Si pasa validación muestra mensaje
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Login exitoso ✅")),
                        );
                      }
                    },
                    child: const Text("Ingresar"),
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