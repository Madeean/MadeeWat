import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:madee_wat/models/destinations_model.dart';
import 'package:madee_wat/shared/theme.dart';
import 'package:madee_wat/ui/pages/choose_seat_page.dart';
import 'package:madee_wat/ui/widgets/custom_button.dart';
import 'package:madee_wat/ui/widgets/interest_to_item.dart';
import 'package:madee_wat/ui/widgets/photos_item.dart';

class DetailPage extends StatefulWidget {
  final DestinationModel destinationModel;
  const DetailPage(this.destinationModel, {Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  backgroundImage() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(widget.destinationModel.imageUrl),
        ),
      ),
    );
  }

  customShadow() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.31),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            kWhiteColor.withOpacity(0),
            Colors.black.withOpacity(0.95),
          ],
        ),
      ),
    );
  }

  content() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
      child: Column(
        children: [
          Container(
            width: 108,
            height: 24,
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_emblem.png'),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 256),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.destinationModel.name,
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        widget.destinationModel.city,
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: light,
                        ),
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
                      '${widget.destinationModel.rating}',
                      style: whiteTextStyle.copyWith(fontWeight: semiBold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // NOTE description
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // !NOTE ABOUT
                Text(
                  'About',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'berada di jalur jalan provinsi yang menghiubungkan denpasar singaraja serta letaknya yang dekat dengan kebun raya eka karya menjadikan tempat bali yang indah',
                  style: blackTextStyle.copyWith(height: 2),
                ),
                // !NOTE photos
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Photos',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    PhotoItem(image: "assets/image_photo1.png"),
                    PhotoItem(image: "assets/image_photo2.png"),
                    PhotoItem(image: "assets/image_photo3.png"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                //!NOTE interest
                Text(
                  'Interest',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    InterestItem(text: "Kids park"),
                    InterestItem(text: "Honor Bridge"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InterestItem(text: "City Museum"),
                    InterestItem(text: "Central Mall"),
                  ],
                ),
              ],
            ),
          ),
          // ! price and button
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 30),
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        NumberFormat.currency(
                          locale: 'id',
                          symbol: 'IDR ',
                          decimalDigits: 0,
                        ).format(widget.destinationModel.price),
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Per Orang',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomButtom(
                    title: "Book Now",
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChooseSetPage()));
                    },
                    width: 170),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            customShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}
