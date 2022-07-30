import 'package:flutter/material.dart';
import 'package:madee_wat/shared/theme.dart';
import 'package:madee_wat/ui/widgets/destination_card.dart';
import 'package:madee_wat/ui/widgets/destination_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  header() {
    return Container(
      margin:
          EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy,\nMadee',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),
                Text(
                  'Where to fly today',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/image_profile.png',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  popularDestinations() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            DestinationCard(
              image: 'assets/image_destination1.png',
              title: "Lake Ciliwung",
              lokasi: "Tangerang",
              rating: 4.8,
            ),
            DestinationCard(
              image: 'assets/image_destination2.png',
              title: "White House",
              lokasi: "Spain",
              rating: 4.7,
            ),
            DestinationCard(
              image: 'assets/image_destination3.png',
              title: "Hill Heiyo",
              lokasi: "Monaco",
              rating: 4.8,
            ),
            DestinationCard(
              image: 'assets/image_destination4.png',
              title: "Menarra",
              lokasi: "Japan",
              rating: 5.0,
            ),
            DestinationCard(
              image: 'assets/image_destination5.png',
              title: "Payung Teduh",
              lokasi: "Singapore",
              rating: 4.5,
            ),
          ],
        ),
      ),
    );
  }

  newDestination() {
    return Container(
      margin: EdgeInsets.only(
          top: 30, left: defaultMargin, right: defaultMargin, bottom: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New This Year',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          DestinationTile(
            title: "Danau Beratan",
            image: "assets/image_destination6.png",
            lokasi: "Singaraja",
            rating: 4.5,
          ),
          DestinationTile(
            title: "Sydney Opera",
            image: "assets/image_destination7.png",
            lokasi: "Australia",
            rating: 4.5,
          ),
          DestinationTile(
            title: "Roma",
            image: "assets/image_destination8.png",
            lokasi: "Italy",
            rating: 4.5,
          ),
          DestinationTile(
            title: "Payung Teduh",
            image: "assets/image_destination5.png",
            lokasi: "Singapore",
            rating: 4.5,
          ),
          DestinationTile(
            title: "Hill Heiyo",
            image: "assets/image_destination3.png",
            lokasi: "Monaco",
            rating: 4.5,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        popularDestinations(),
        newDestination(),
      ],
    );
  }
}
