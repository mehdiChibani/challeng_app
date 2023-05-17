part of 'trending_sales_bloc.dart';

abstract class TrendingSalesEvent extends Equatable {
  const TrendingSalesEvent();

  @override
  List<Object> get props => [];
}

class GetTrendingSales extends TrendingSalesEvent{}