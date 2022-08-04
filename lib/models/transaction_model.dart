import 'package:equatable/equatable.dart';
import 'package:madee_wat/models/destinations_model.dart';

class TransactionModel extends Equatable {
  final DestinationModel destination;
  final int amountOfTraveller;
  final String selectedSeat;
  final bool insurance;
  final bool refundable;
  final double vat;
  final int price;
  final int grandTotal;

  TransactionModel({
    required this.destination,
    this.amountOfTraveller = 0,
    this.selectedSeat = '',
    this.insurance = false,
    this.refundable = false,
    this.vat = 0,
    this.price = 0,
    this.grandTotal = 0,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        destination,
        amountOfTraveller,
        selectedSeat,
        insurance,
        refundable,
        vat,
        price,
        grandTotal,
      ];
}
