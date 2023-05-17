part of 'new_arrivals_bloc.dart';

abstract class NewArrivalsEvent extends Equatable {
  const NewArrivalsEvent();

  @override
  List<Object> get props => [];
}

class GetNewArrivals extends NewArrivalsEvent{}
