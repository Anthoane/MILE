import 'package:flutter/material.dart';
 
class OffersPage extends StatelessWidget {
  const OffersPage({super.key});
 
  // 👇 Lista de productos, declarada fuera del build
  final List<Map<String, dynamic>> products = const [
    {
      "nombre_producto": "Big cola 3l",
      "descripcion": "Bebida gasificada sabor cola",
      "precio": 7.0,
      "marca": "Aje",
      "categoria": "Gaseosa",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754433500/gaseosa-bigcola-3.0l_oifhti.jpg",
    },
    {
      "nombre_producto": "Battimix vainilla 146gr",
      "descripcion": "Yogurt batido parcialmente descremado sabor vainilla",
      "precio": 3.5,
      "marca": "Gloria",
      "categoria": "Yogurt",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754521244/battimix-vainilla-146gr_kc8cul.jpg",
    },
    {
      "nombre_producto": "Griego frutos rojos 120gr",
      "descripcion": "Yogurt de frutos rojos, fresa y arándano",
      "precio": 2.0,
      "marca": "Gloria",
      "categoria": "Yogurt",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520796/yogurt-gloria-frutosrojos-120gr_wpwhpo.jpg",
    },
    {
      "nombre_producto": "Yogurt fresa 1kg",
      "descripcion": "Yogurt parcialmente descremado sabor fresa",
      "precio": 7.0,
      "marca": "Gloria",
      "categoria": "Yogurt",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520792/yogurt-gloria-fresa-1kg_sgdvl9.jpg",
    },
    {
      "nombre_producto": "Yogurt fresa 500gr",
      "descripcion": "Yogurt parcialmente descremado sabor fresa",
      "precio": 4.0,
      "marca": "Gloria",
      "categoria": "Yogurt",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754522027/yogurt-gloria-fresa-500gr_lguqyv.jpg",
    },
    {
      "nombre_producto": "Yogurt fresa 1kg",
      "descripcion": "Yogurt parcialmente descremado sabor fresa",
      "precio": 7.0,
      "marca": "Laive",
      "categoria": "Yogurt",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520783/yogurt-laive-1kg_qj0dsu.jpg",
    },
    {
      "nombre_producto": "Griego frutos rojos 800gr",
      "descripcion": "Yogurt de frutos rojos, fresa y arándano",
      "precio": 8.5,
      "marca": "Gloria",
      "categoria": "Yogurt",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520779/yogurt-gloria-frutosrojos-800gr_oxq8wu.jpg",
    },
    {
      "nombre_producto": "Pantene restauración 400ml",
      "descripcion": "Shampoo sin parabenos ni colorantes",
      "precio": 18.0,
      "marca": "Pantene",
      "categoria": "Shampoo",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520757/shampoo-pantene-400ml_e1xu2x.jpg",
    },
    {
      "nombre_producto": "Mermelada fresa 290gr",
      "descripcion": "Sin saborizantes ni colorantes envase de vidrio",
      "precio": 6.5,
      "marca": "Gloria",
      "categoria": "Mermelada",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520742/mermelada-gloria-290gr_y6bocw.jpg",
    },
    {
      "nombre_producto": "Leche evaporada gloria 170gr",
      "descripcion": "Reconstituida y enriquecida con vitamina A y C",
      "precio": 2.3,
      "marca": "Gloria",
      "categoria": "Leche",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520726/leche-gloria-170gr_la9ebt.jpg",
    },
    {
      "nombre_producto": "Leche entera gloria 1l",
      "descripcion": "Con vitaminas A y D",
      "precio": 6.0,
      "marca": "Gloria",
      "categoria": "Leche",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520715/leche-gloria-1l_f8u2r9.jpg",
    },
    {
      "nombre_producto": "Pura vida 390gr",
      "descripcion":
          "Mezcla lactea compuesto con aceite vegetal y maltodextrina",
      "precio": 3.3,
      "marca": "Pura vida",
      "categoria": "Leche",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520709/leche-puravida-390gr_gfmknq.jpg",
    },
    {
      "nombre_producto": "Pura vida 165gr",
      "descripcion":
          "Mezcla lactea compuesto con aceite vegetal y maltodextrina",
      "precio": 1.8,
      "marca": "Pura vida",
      "categoria": "Leche",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520705/leche-puravida-165gr_ukxt4p.jpg",
    },
    {
      "nombre_producto": "Leche laive 390gr",
      "descripcion": "Evaporada y entera",
      "precio": 4.0,
      "marca": "Live",
      "categoria": "Leche",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520699/leche-laive-390gr_hgwqlv.jpg",
    },
    {
      "nombre_producto": "Leche evaporada gloria 390gr",
      "descripcion": "Reconstituida y enriquecida con vitamina A y C",
      "precio": 4.2,
      "marca": "Gloria",
      "categoria": "Leche",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520696/leche-gloria-390gr_brd1cl.jpg",
    },
    {
      "nombre_producto": "Sapolio limon 800gr",
      "descripcion": "Lavavajilla en pasta",
      "precio": 6.0,
      "marca": "Sapolio",
      "categoria": "Lavavajilla",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520684/lavavajilla-sapolio-800gr_lr7ou6.jpg",
    },
    {
      "nombre_producto": "Ayudin liquido 900ml",
      "descripcion": "Remueve grasa sabor limon y sabila",
      "precio": 14.0,
      "marca": "Ayudin",
      "categoria": "Lavavajilla",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520676/ayudin-liquido-900ml_di3uqb.jpg",
    },
    {
      "nombre_producto": "Ayudin 950gr",
      "descripcion": "Lavavajilla en pasta",
      "precio": 8.5,
      "marca": "Ayudin",
      "categoria": "Lavavajilla",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520672/ayudin-900gr_cplatq.jpg",
    },
    {
      "nombre_producto": "Jabón marsella 190gr",
      "descripcion": "Jabón en barra aromaterapia",
      "precio": 3.0,
      "marca": "Marsella",
      "categoria": "Jabón ropa",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520656/jabon-marsella-190gr_iqlkqe.jpg",
    },
    {
      "nombre_producto": "Jabón bolivar 190gr",
      "descripcion": "Jabón en barra floral",
      "precio": 3.0,
      "marca": "Bolivar",
      "categoria": "Jabón ropa",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520656/jabon-marsella-190gr_iqlkqe.jpg",
    },
    {
      "nombre_producto": "Harina molitalia 1kg",
      "descripcion": "Harina preparada ideal para repostería",
      "precio": 7.0,
      "marca": "Molitalia",
      "categoria": "Harina",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520601/harina-molitalia-1kg_xkevzw.jpg",
    },
    {
      "nombre_producto": "Harina blancaflor 1kg",
      "descripcion": "Harina preparada ideal para repostería",
      "precio": 8.0,
      "marca": "Blancaflor",
      "categoria": "Harina",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520598/harina-blancaflor-1kg_teixll.jpg",
    },
    {
      "nombre_producto": "Caramelo chicha morada 374gr",
      "descripcion": "Caramelos duros contiene 110u",
      "precio": 5.5,
      "marca": "Sayon",
      "categoria": "Caramelo",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520586/caramelo-morada_qzsj78.jpg",
    },
    {
      "nombre_producto": "Caramelo yogurt 400gr",
      "descripcion":
          "Caramelo duro con relleno de yogurt sabor fresa contiene 100u",
      "precio": 6.0,
      "marca": "Sayon",
      "categoria": "Caramelo",
      "imagen_url":
          "https://res.cloudinary.com/dovvorhpd/image/upload/v1754520583/caramelo-yogurt_xlddbd.jpg",
    },
  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 🔹 Barra superior con título centrado
      appBar: AppBar(
        title: const Text("Nuestras Ofertas 🏷️"),
        centerTitle: true,
      ),
 
      // 🔹 Cuerpo de la pantalla con una cuadrícula (grid) de productos
      body: GridView.builder(
        padding: const EdgeInsets.all(12), // Margen alrededor del grid
        // Configuración de la cuadrícula
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 📦 Dos productos por fila
          crossAxisSpacing: 10, // Espacio horizontal entre productos
          mainAxisSpacing: 10, // Espacio vertical entre productos
          childAspectRatio: 0.7, // Relación ancho/alto de cada tarjeta
        ),
 
        itemCount: products.length, // Cantidad total de productos a mostrar
        // Cómo se dibuja cada producto
        itemBuilder: (context, index) {
          final product = products[index]; // Producto actual
 
          return Card(
            // 📦 Tarjeta para cada producto
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16), // Bordes redondeados
            ),
            elevation: 4, // Sombra de la tarjeta
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🔹 Imagen del producto
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16), // Solo arriba redondeado
                  ),
                  child: Image.network(
                    product["imagen_url"], // URL de la imagen del producto
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover, // Ajusta la imagen al contenedor
                  ),
                ),
 
                // 🔹 Información del producto
                Padding(
                  padding: const EdgeInsets.all(8.0), // Espaciado interno
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Nombre del producto
                      Text(
                        product["nombre_producto"],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        maxLines: 2, // Máximo 2 líneas
                        overflow:
                            TextOverflow.ellipsis, // "..." si es muy largo
                      ),
                      const SizedBox(height: 4),
 
                      // Descripción del producto
                      Text(
                        product["descripcion"],
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 6),
 
                      // Precio del producto
                      Text(
                        "S/ ${product["precio"]}",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}