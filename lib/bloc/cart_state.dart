part of 'cart_bloc.dart';

abstract class CartState extends Equatable {
  const CartState();

  @override
  List<Object> get props => [];
}

class LoadingState extends CartState {}

class LoadedState extends CartState {
  final List<Product> cartProductsList;

  const LoadedState({required this.cartProductsList});

  @override
  List<Object> get props => [cartProductsList];
}

class ErrorState extends CartState {
  final String errorMessage;

  const ErrorState({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
