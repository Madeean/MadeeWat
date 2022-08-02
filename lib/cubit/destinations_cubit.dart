import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:madee_wat/models/destinations_model.dart';
import 'package:madee_wat/services/destination_service.dart';

part 'destinations_state.dart';

class DestinationsCubit extends Cubit<DestinationsState> {
  DestinationsCubit() : super(DestinationsInitial());

  void fetchDestinations() async {
    try {
      emit(DestinationsLoading());

      List<DestinationModel> destinations =
          await DestinationService().fetchDestinations();

      emit(DestinationsSuccess(destinations));
    } catch (e) {
      emit(DestinationsFailed(e.toString()));
    }
  }
}
