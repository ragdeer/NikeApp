import 'package:flutter/material.dart';
import 'shoe.dart';

class Cart extends ChangeNotifier {

  // Lista de tenis disponibles en la tienda
  List<Shoe> shoeShop = [
    Shoe(
      name: 'AJ1 x Cactus Jack',
      price: '\$800',
      description: 'A triple threat of streetwear collabs.',
      imagePath: 'lib/images/Travis.png'
    ),
    Shoe(
      name: 'Jordan 1 "Chicago"',
      price: '\$5100',
      description: 'The iconic Chicago colorway gets a deconstructed makeover',
      imagePath: 'lib/images/Chicago.png'
    ),
    Shoe(
      name: 'Dunk Off-White',
      price: '\$600',
      description: 'A minimalist masterpiece with a touch of luxury.',
      imagePath: 'lib/images/Off-white.png'
    ),
    Shoe(
      name: 'AF1 x Tiffany&Co.',
      price: '\$1500',
      description: 'A high-end twist on a classic basketball shoe.',
      imagePath: 'lib/images/Tiffany.png'
    ),
    Shoe(
      name: 'AJ4 "Black Cat"',
      price: '\$1100',
      description: 'A stealthy take on a beloved silhouette.',
      imagePath: 'lib/images/Blackcat.png'
    )
  ];

  // Mapa de items en el carrito y sus cantidades
  Map<Shoe, int> userCart = {};

  // Obtener lista de items para venta
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // Obtener el carrito de usuario como una lista de productos únicos
  Map<Shoe, int> getUserCart() {
    return userCart;
  }

  // Añadir un item al carrito
  void addItemToCart(Shoe shoe) {
    if (userCart.containsKey(shoe)) {
      // Si el producto ya está en el carrito, aumenta la cantidad
      userCart[shoe] = userCart[shoe]! + 1;
    } else {
      // Si no está, añádelo con cantidad 1
      userCart[shoe] = 1;
    }
    notifyListeners();
  }

  // Eliminar un item del carrito
  void removeItemFromCart(Shoe shoe) {
    if (userCart.containsKey(shoe)) {
      // Si el producto tiene más de 1 en cantidad, reduce la cantidad
      if (userCart[shoe]! > 1) {
        userCart[shoe] = userCart[shoe]! - 1;
      } else {
        // Si la cantidad es 1, elimina el producto del carrito
        userCart.remove(shoe);
      }
      notifyListeners();
    }
  }
}
