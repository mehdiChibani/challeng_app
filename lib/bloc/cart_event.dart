part of 'cart_bloc.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class AddToCart extends CartEvent {Product product;
  AddToCart({required this.product});}

class GetCartProducts extends CartEvent {
  
}
