import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madee_wat/cubit/seat_cubit.dart';
import 'package:provider/provider.dart';

import '../../shared/theme.dart';

class Seat extends StatefulWidget {
  final bool isAvailable;
  final String id;
  //* 0=available 1=selected 2 = unavailable

  const Seat({Key? key, this.isAvailable = true, required this.id})
      : super(key: key);

  @override
  State<Seat> createState() => _SeatState();
}

class _SeatState extends State<Seat> {
  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(widget.id);

    backgroundColor() {
      if (!widget.isAvailable) {
        return kUnavailableColor;
      } else {
        if (isSelected) {
          return kPrimaryColor;
        } else {
          return kAvailableColor;
        }
      }
    }

    borderColor() {
      if (!widget.isAvailable) {
        return kUnavailableColor;
      } else {
        return kPrimaryColor;
      }
    }

    child() {
      if (isSelected) {
        return Center(
          child: Text(
            'You',
            style: whiteTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semiBold,
            ),
          ),
        );
      } else {
        return SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (widget.isAvailable) {
          context.read<SeatCubit>().selectSeat(widget.id);
          // Provider.of<SeatCubit>(context,listen: ).selectSeat(widget.id);
        }
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 2,
            color: borderColor(),
          ),
        ),
        child: child(),
      ),
    );
  }
}
