import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Encabezado
            const Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            
            const SizedBox(height: 20), // Espacio vertical

            // Verifica si el carrito está vacío
            if (value.getUserCart().isEmpty)
              const Center(
                child: Text(
                  'Your Cart is empty.',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              )
            else
              Expanded(
                child: ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context, index) {
                    // Extrae la lista de productos y cantidades
                    var cartItems = value.getUserCart().entries.toList();
                    Shoe shoe = cartItems[index].key;
                    int quantity = cartItems[index].value;

                    // Muestra el producto y la cantidad con un borde alrededor
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(8), // Padding interno para separar del borde
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.transparent, // Color del borde
                          width: 2,
                        ),
                      ),
                      child: ListTile(
                        leading: Image.asset(shoe.imagePath, width: 50, height: 50),
                        title: Text(shoe.name),
                        subtitle: Text(
                          'Quantity: $quantity\nPrice: ${shoe.price}',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.remove_circle_outline),
                          onPressed: () {
                            // Elimina un producto del carrito
                            value.removeItemFromCart(shoe);
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
