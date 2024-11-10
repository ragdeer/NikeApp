import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {

  //Lista de tenis
  List<Shoe> shoeShop = [
    Shoe(
      name: 'AJ1 x Cactus Jack',
      price: '800',
      description: 'I get these gooosebumps everytime yeah!',
      imagePath: 'lib/images/Travis.png'
    ),
    Shoe(
      name: 'Jordan 1 "Chicago"',
      price: '5100',
      description: 'I get these gooosebumps everytime yeah!',
      imagePath: 'lib/images/Chicago.png'
    ),
    Shoe(
      name: 'Dunk Off-White',
      price: '600',
      description: 'I get these gooosebumps everytime yeah!',
      imagePath: 'lib/images/Off-white.png'
    ),
    Shoe(
      name: 'AF1 x Tiffany&Co.',
      price: '1500  ',
      description: 'I get these gooosebumps everytime yeah!',
      imagePath: 'lib/images/Tiffany.png'
    ),
    Shoe(
      name: 'Jordan 4 "Black cat"',
      price: '1100  ',
      description: 'I get these gooosebumps everytime yeah!',
      imagePath: 'lib/images/Blackcat.png'
    )
  ];

  //Lista de items en el carrito
  List<Shoe> userCart = [];
  //Obtener lista de items para venta
  List<Shoe> getShoeList(){
    return shoeShop;
  }
  //obtener carrito
  List<Shoe> getUserCart(){
    return userCart;
  }
  //añadir items al carrito
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  //eliminar items del carrito
  void removeItemToCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}