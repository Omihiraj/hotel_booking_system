import 'package:flutter/material.dart';
import 'package:hotel_management_app/main.dart';
import 'package:hotel_management_app/providers/hotel_provider.dart';
import 'package:hotel_management_app/utility/app_colors.dart';
import 'package:hotel_management_app/utility/app_const.dart';
import 'package:provider/provider.dart';

import '../../widgets/most_relavant_widget.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  image: DecorationImage(
                    image: const NetworkImage(
                        "https://images.unsplash.com/photo-1445019980597-93fa8acb246c?q=80&w=2074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.darken),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Norway",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.person_2_sharp,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Hey, Martin! Tell Us Where you want to go",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    )
                  ],
                ),
              )
            ],
          ),
          const Text(
            "The Most Relavant",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: AppConst.mostRelevantCardHeight,
            child: Consumer<HotelProvider>(
              builder: (context, hotelProvider, child) {
                return hotelProvider.allHotelData.isEmpty
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: hotelProvider.allHotelData.length,
                        itemBuilder: (context, index) {
                          return MostRelavantWidget(
                            title: hotelProvider.allHotelData[index].title!,
                            rating: hotelProvider.allHotelData[index].rating!,
                            mainImage:
                                hotelProvider.allHotelData[index].mainImage!,
                            amenities:
                                hotelProvider.allHotelData[index].amenities!,
                          );
                        },
                      );
              },
            ),
          )
        ],
      ),
    );
  }
}
