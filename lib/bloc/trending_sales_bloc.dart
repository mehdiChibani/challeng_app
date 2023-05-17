import 'dart:async';
import 'dart:math';

import 'package:challenge_app/utils/json_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:challenge_app/models/product.dart';
import 'package:equatable/equatable.dart';

part 'trending_sales_event.dart';
part 'trending_sales_state.dart';

class TrendingSalesBloc extends Bloc<TrendingSalesEvent, TrendingSalesState> {
  TrendingSalesBloc() : super(LoadingState()) {
    on<TrendingSalesEvent>((event, emit) async {
      if (event is GetTrendingSales) {
        //emit loading State
        emit(LoadingState());
        //get trendingSales
        try {
          final trendingSales = await JsonUtils().readTrendingSalesJson();
          emit(LoadedState(trendingSales: trendingSales));
        } catch (e) {
          emit(ErrorState(errorMessage: e.toString()));
        }
      }
    });
  }

  @override
  Stream<TrendingSalesState> mapEventToState(
    TrendingSalesEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
