part of 'new_arrivals_bloc.dart';




abstract class NewArrivalsState extends Equatable {
  const NewArrivalsState();

  @override
  List<Object> get props => [];
}

class LoadingState extends NewArrivalsState {}

class LoadedState extends NewArrivalsState {
  final List<Product> newArrivals;

  const LoadedState({required this.newArrivals});

  @override
  List<Object> get props => [newArrivals];
}

class ErrorState extends NewArrivalsState {
  final String errorMessage;

  const ErrorState({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}