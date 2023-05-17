import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:challenge_app/models/product.dart';
import 'package:challenge_app/utils/storage_utils.dart';
import 'package:equatable/equatable.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(LoadingState()) {
    on<CartEvent>((event, emit) async {
      if (event is GetCartProducts) {
        //emit loading State
        emit(LoadingState());
        //get trendingSales
        try {
          final cartList = await StorageUtils().readCartProducts();
          emit(LoadedState(cartProductsList: cartList));
          print(cartList);
        } catch (e) {
          print(e.toString());
          emit(ErrorState(errorMessage: e.toString()));
        }
      }
      if (event is AddToCart) {
        //emit loading State
        emit(LoadingState());
        //get trendingSales
        try {
          print('keeek');
          final cartList = await StorageUtils().addToCartUtils(event.product);
          emit(LoadedState(cartProductsList: cartList));
        } catch (e) {
          print('keeek');
          print(e.toString());
          emit(ErrorState(errorMessage: e.toString()));
        }
      }
    });
  }

  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
