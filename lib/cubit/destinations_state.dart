part of 'destinations_cubit.dart';

abstract class DestinationsState extends Equatable {
  const DestinationsState();

  @override
  List<Object> get props => [];
}

class DestinationsInitial extends DestinationsState {}

class DestinationsLoading extends DestinationsState {}

class DestinationsSuccess extends DestinationsState {
  final List<DestinationModel> destinations;

  DestinationsSuccess(this.destinations);

  @override
  // TODO: implement props
  List<Object> get props => [destinations];
}

class DestinationsFailed extends DestinationsState {
  final String error;
  DestinationsFailed(this.error);

  @override
  // TODO: implement props
  List<Object> get props => [error];
}
