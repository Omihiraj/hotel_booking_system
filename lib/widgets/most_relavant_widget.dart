import 'package:flutter/material.dart';

import '../utility/app_const.dart';
import 'facility_widget.dart';

class MostRelavantWidget extends StatelessWidget {
  const MostRelavantWidget({
    super.key,
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
                  child: Image.asset("assets/hotel1.jpg"),
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tiny Hopme in Roelingen"),
                  Row(
                    children: [Icon(Icons.star), Text("4.96(217)")],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  FacilityWidget(
                    facility: "4guests",
                  ),
                  FacilityWidget(
                    facility: "2bedroom",
                  ),
                  FacilityWidget(
                    facility: "2beds",
                  )
                ],
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
