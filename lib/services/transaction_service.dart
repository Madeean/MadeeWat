import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:madee_wat/models/transaction_model.dart';

class TransactionService {
  CollectionReference _transactionReference =
      FirebaseFirestore.instance.collection('transactions');

  Future<void> createTransaction(TransactionModel transaction) async {
    try {
      _transactionReference.add(
        {
          'destination': transaction.destination.toJson(),
          'amountOfTraveller': transaction.amountOfTraveller,
          'selectedSeat': transaction.selectedSeat,
          'insurance': transaction.insurance,
          'refundable': transaction.refundable,
          'vat': transaction.vat,
          'price': transaction.price,
          'grandTotal': transaction.grandTotal,
        },
      );
    } catch (e) {
      throw e;
    }
  }
}
