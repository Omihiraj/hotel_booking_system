import 'package:flutter/material.dart';

class FacilityWidget extends StatelessWidget {
  const FacilityWidget({
    super.key,
    required this.facility,
  });

  final String facility;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.black),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(facility),
        const SizedBox(
          width: 8,
        )
      ],
    );
  }
}
