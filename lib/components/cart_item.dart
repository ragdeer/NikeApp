import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class CartItem extends StatelessWidget {
  final Shoe shoe;
  final int quantity;

  CartItem({
    super.key,
    required this.shoe,
    required this.quantity,
  });

  // Método para reducir la cantidad o eliminar el producto
  void removeItemFromCart(BuildContext context) {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(shoe.imagePath),
        title: Text(shoe.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(shoe.price),
            const SizedBox(height: 4),
            Text(
              'Cantidad: $quantity', // Muestra la cantidad
              style: TextStyle(color: Colors.grey[600]),
            ),
          ],
        ),
        trailing: IconButton(
          onPressed: () => removeItemFromCart(context),
          icon: const Icon(Icons.remove_circle_outline),
        ),
      ),
    );
  }
}
