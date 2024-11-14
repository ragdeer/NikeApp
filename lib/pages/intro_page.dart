// Imports.
import 'package:flutter/material.dart';
import 'home_page.dart';

// Define la clase IntroPage, que extiende StatelessWidget porque no requiere un estado mutable.
class IntroPage extends StatelessWidget {
  // Constructor de IntroPage
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Establece el color de fondo de la página.
      backgroundColor: Colors.grey[100],
      // Crea el cuerpo de la pantalla en el centro de la página.
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          // Columna central que organiza los elementos verticalmente.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo de la aplicación
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/images/nike.png', // Ruta del logo.
                  height: 240, // Altura del logo.
                ),
              ),
          
              // Título principal
              const Text(
                'Just Do It!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
                
              // Subtítulo con una breve descripción
              const Text(
                'Brand new sneakers and custom kicks made with premium quality',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48), // Espacio vertical

              // Botón "Shop now"
              GestureDetector(
                // Navega a la página principal al presionar el botón.
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ),
                // Estilo del botón
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      'Shop now', // Texto del botón
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
