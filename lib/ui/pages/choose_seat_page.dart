import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:madee_wat/cubit/seat_cubit.dart';
import 'package:madee_wat/models/destinations_model.dart';
import 'package:madee_wat/models/transaction_model.dart';
import 'package:madee_wat/shared/theme.dart';
import 'package:madee_wat/ui/pages/checkout_page.dart';
import 'package:madee_wat/ui/widgets/custom_button.dart';
import 'package:madee_wat/ui/widgets/seat.dart';

class ChooseSetPage extends StatefulWidget {
  final DestinationModel destinationModel;
  const ChooseSetPage({Key? key, required this.destinationModel})
      : super(key: key);

  @override
  State<ChooseSetPage> createState() => _ChooseSetPageState();
}

class _ChooseSetPageState extends State<ChooseSetPage> {
  title() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Text(
        'Select Your\nFavourite Seat',
        style: blackTextStyle.copyWith(
          fontSize: 24,
          fontWeight: semiBold,
        ),
      ),
    );
  }

  seatStatus() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        children: [
          // !available
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_available.png'),
              ),
            ),
          ),
          Text(
            'Available',
            style: blackTextStyle,
          ),
          // !selected
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6, left: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_selected.png'),
              ),
            ),
          ),
          Text(
            'Selected',
            style: blackTextStyle,
          ),
          // ! unavailable
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6, left: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_unavailable.png'),
              ),
            ),
          ),
          Text(
            'UnAvailable',
            style: blackTextStyle,
          ),
        ],
      ),
    );
  }

  selectSeat() {
    return BlocBuilder<SeatCubit, List<String>>(
      builder: (context, state) {
        return Container(
          margin: EdgeInsets.only(top: 30),
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: kWhiteColor,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // !seat indicator
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'A',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'B',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'C',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        'D',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // !Seat 1
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Seat(id: "A1"),
                    Seat(
                      id: "B1",
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '1',
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    Seat(
                      id: "C1",
                      isAvailable: false,
                    ),
                    Seat(id: "D1"),
                  ],
                ),
              ),
              // !seat 2
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Seat(id: "A2"),
                    Seat(id: "B2"),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '2',
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    Seat(id: "C2"),
                    Seat(id: "D2"),
                  ],
                ),
              ),
              // !seat3
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Seat(
                      id: "A3",
                      isAvailable: false,
                    ),
                    Seat(id: "B3"),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '3',
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    Seat(id: "C3"),
                    Seat(id: "D3"),
                  ],
                ),
              ),
              // !seat4
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Seat(id: "A4"),
                    Seat(id: "B4"),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '4',
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    Seat(id: "C4"),
                    Seat(id: "D4"),
                  ],
                ),
              ),
              // !seat4
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Seat(id: "A5"),
                    Seat(id: "B5"),
                    Container(
                      width: 48,
                      height: 48,
                      child: Center(
                        child: Text(
                          '5',
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                    Seat(id: "C5"),
                    Seat(id: "D5"),
                  ],
                ),
              ),

              // ! your seat
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Your Seat',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      state.join(', '),
                      style: blackTextStyle.copyWith(
                          fontWeight: medium, fontSize: 16),
                    ),
                  ],
                ),
              ),

              // !total
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                    Text(
                      NumberFormat.currency(
                        locale: 'id',
                        symbol: 'IDR ',
                        decimalDigits: 0,
                      ).format(state.length * widget.destinationModel.price),
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  checkoutButton() {
    return BlocBuilder<SeatCubit, List<String>>(
      builder: (context, state) {
        return CustomButtom(
          title: "Continue to checkout",
          onPress: () {
            int price = widget.destinationModel.price * state.length;

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CheckoutPage(
                  transactionModel: TransactionModel(
                    destination: widget.destinationModel,
                    amountOfTraveller: state.length,
                    selectedSeat: state.join(', '),
                    insurance: true,
                    refundable: false,
                    price: price,
                    grandTotal: price + (price * 0.45).toInt(),
                    vat: 45,
                  ),
                ),
              ),
            );
          },
          margintop: 30,
          marginbot: 46,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          checkoutButton(),
        ],
      ),
    );
  }
}
