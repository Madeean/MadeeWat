import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class Seat extends StatefulWidget {
  final int status;
  //* 0=available 1=selected 2 = unavailable

  const Seat({Key? key, required this.status}) : super(key: key);

  @override
  State<Seat> createState() => _SeatState();
}

class _SeatState extends State<Seat> {
  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (widget.status) {
        case 0:
          return kAvailableColor;
          break;
        case 1:
          return kPrimaryColor;
          break;
        case 2:
          return kUnavailableColor;
          break;
        default:
          return kUnavailableColor;
      }
    }

    borderColor() {
      switch (widget.status) {
        case 0:
          return kPrimaryColor;
          break;
        case 1:
          return kPrimaryColor;
          break;
        case 2:
          return kUnavailableColor;
          break;
        default:
          return kUnavailableColor;
      }
    }

    child() {
      switch (widget.status) {
        case 0:
          return SizedBox();
          break;
        case 1:
          return Center(
            child: Text(
              'You',
              style: whiteTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
          );
          break;
        case 2:
          return SizedBox();
          break;
        default:
          return SizedBox();
      }
    }

    return Container(
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
    );
  }
}
