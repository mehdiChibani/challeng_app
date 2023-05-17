part of 'trending_sales_bloc.dart';

abstract class TrendingSalesState extends Equatable {
  const TrendingSalesState();

  @override
  List<Object> get props => [];
}

class LoadingState extends TrendingSalesState {}

class LoadedState extends TrendingSalesState {
  final List<Product> trendingSales;

  const LoadedState({required this.trendingSales});

  @override
  List<Object> get props => [trendingSales];
}

class ErrorState extends TrendingSalesState {
  final String errorMessage;

  const ErrorState({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
