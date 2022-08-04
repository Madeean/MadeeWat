import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:madee_wat/models/transaction_model.dart';

import '../../shared/theme.dart';
import 'booking_detail_item.dart';

class TransactionCard extends StatefulWidget {
  final TransactionModel transactionModel;

  const TransactionCard({Key? key, required this.transactionModel})
      : super(key: key);

  @override
  State<TransactionCard> createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  @override
  Widget build(BuildContext context) {
    var transactionModel;
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // !destination
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        widget.transactionModel.destination.imageUrl),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.transactionModel.destination.name,
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium),
                    ),
                    SizedBox(width: 5),
                    Text(
                      widget.transactionModel.destination.city,
                      style: greyTextStyle.copyWith(fontWeight: light),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 3, right: 5),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_star.png'),
                      ),
                    ),
                  ),
                  Text(
                    '${widget.transactionModel.destination.rating}',
                    style: blackTextStyle.copyWith(fontWeight: semiBold),
                  ),
                ],
              ),
            ],
          ),

          // !NOTE: BOOKING DETAIL TEXT
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'Booking Details',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),
          // !booking detail items
          BookingDetailsItem(
            title: "Traveler",
            valueText: "${widget.transactionModel.amountOfTraveller} Person",
            valueColor: kBlackColor,
          ),
          BookingDetailsItem(
            title: "Seat",
            valueText: "${widget.transactionModel.selectedSeat}",
            valueColor: kBlackColor,
          ),
          BookingDetailsItem(
            title: "Insurence",
            valueText: '${widget.transactionModel.insurance ? "YES" : "NO"}',
            valueColor: kGreenColor,
          ),
          BookingDetailsItem(
            title: "Refundable",
            valueText: "${widget.transactionModel.refundable ? "YES" : "NO"}",
            valueColor: kRedColor,
          ),
          BookingDetailsItem(
            title: "VAT",
            valueText: "${widget.transactionModel.vat.toInt()}%",
            valueColor: kBlackColor,
          ),
          BookingDetailsItem(
            title: "Price",
            valueText: NumberFormat.currency(
              locale: 'id',
              symbol: 'IDR ',
              decimalDigits: 0,
            ).format(widget.transactionModel.price),
            valueColor: kBlackColor,
          ),
          BookingDetailsItem(
            title: "Grand Total",
            valueText: NumberFormat.currency(
              locale: 'id',
              symbol: 'IDR ',
              decimalDigits: 0,
            ).format(widget.transactionModel.grandTotal),
            valueColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
