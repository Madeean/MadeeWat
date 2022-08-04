import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madee_wat/cubit/transaction_cubit.dart';
import 'package:madee_wat/shared/theme.dart';
import 'package:madee_wat/ui/widgets/transaction_card.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    context.read<TransactionCubit>().fetchTransaction();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is TransactionSuccess) {
          if (state.transaction.length == 0) {
            return Center(
              child: Text('Tidak ada transaksi'),
            );
          }
          return Container(
            margin: EdgeInsets.only(bottom: 80),
            child: ListView.builder(
                itemCount: state.transaction.length,
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                itemBuilder: (context, index) {
                  print(state.transaction[index]);
                  return TransactionCard(
                      transactionModel: state.transaction[index]);
                }),
          );
        }

        return Container();
      },
    );
  }
}
