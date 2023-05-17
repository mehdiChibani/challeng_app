import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:challenge_app/models/product.dart';
import 'package:challenge_app/utils/json_utils.dart';
import 'package:equatable/equatable.dart';

part 'new_arrivals_event.dart';
part 'new_arrivals_state.dart';

class NewArrivalsBloc extends Bloc<NewArrivalsEvent, NewArrivalsState> {
  NewArrivalsBloc() : super(LoadingState()) {
    on<NewArrivalsEvent>((event, emit) async {
      if (event is GetNewArrivals) {
        //emit loading State
        emit(LoadingState());
        //get trendingSales
        try {
          final newArrivals = await JsonUtils().readNewArrivalsJson();
          emit(LoadedState(newArrivals: newArrivals));
        } catch (e) {
          emit(ErrorState(errorMessage: e.toString()));
        }
      }
    });
  }

  @override
  Stream<NewArrivalsState> mapEventToState(
    NewArrivalsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

