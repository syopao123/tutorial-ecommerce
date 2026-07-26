import 'package:flutter/material.dart';
import 'package:tutorial_ecommerce/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      imagePath: 'lib/images/zoom_freak.jpg',
      description: 'The forward-thinking design of his latest signature shoe.',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '220',
      imagePath: 'lib/images/air_jordan.jpg',
      description:
          'You\'ve got the hops and the speed-lace up in shoes that enhance what you bring to the court.',
    ),
    Shoe(
      name: 'KD Treys',
      price: '240',
      imagePath: 'lib/images/kd_treys.jpg',
      description:
          'A secure midfoot strap is suited for scoring binges and defensive lockdown.',
    ),
    Shoe(
      name: 'Kyrie 6',
      price: '190',
      imagePath: 'lib/images/kyrie_6.jpg',
      description:
          'Bouncy cushioning is paired with soft yet supportive foam for responsive comfort and energy return with every step.',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
