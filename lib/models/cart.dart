import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Max 2013', 
      price: '236', 
      imagePath: 'lib/pics/AirMax2013.png', 
      description: 'Forward thinking design of this latest signature shoe'
    ),

    Shoe(name: 'Air Max 1', 
    price: '351', 
    imagePath: 'lib/pics/AirMax1.png', 
    description: 'All Time favorite premium quality shoes.'
    ),

    Shoe(name: 'Air Imact 4',
    price: '301',
    imagePath: 'lib/pics/Impact4.png',
    description: 'Classy and Comfortable Basketball Shoes.',
    ),

    Shoe(name: 'Mercurial Superfly', 
    price: '499', 
    imagePath: 'lib/pics/Mercurial.png', 
    description: 'Kylian Mbappe Edition Football Shoes.'
    ),
  ];

  final List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}