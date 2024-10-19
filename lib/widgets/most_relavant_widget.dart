import 'package:flutter/material.dart';

import '../utility/app_const.dart';
import 'facility_widget.dart';

class MostRelavantWidget extends StatelessWidget {
  final String title;
  final num rating;
  final String mainImage;
  final List<dynamic> amenities;
  const MostRelavantWidget({
    super.key,
    required this.title,
    required this.rating,
    required this.mainImage,
    required this.amenities,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 350,
        height: AppConst.mostRelevantCardHeight,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppConst.radius),
            color: Colors.white),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppConst.radius),
                  child: Image.network(
                    mainImage,
                    width: 350,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 30,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: const Color.fromARGB(87, 0, 0, 0)),
                    child: const Center(
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title),
                  Row(
                    children: [const Icon(Icons.star), Text("$rating")],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SizedBox(
                width: 350,
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: amenities.length,
                  itemBuilder: (context, index) => FacilityWidget(
                    facility: amenities[index],
                  ),
                ),
              ),
            ),
            const Row(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
