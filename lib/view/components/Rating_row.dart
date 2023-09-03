import 'package:flutter/material.dart';

// ignore: camel_case_types
class RatingRow extends StatefulWidget {
  const RatingRow({super.key, required TextEditingController controller});

  @override
  State<RatingRow> createState() => _StarState();
}

// ignore: unused_element

// ignore: camel_case_types
class _StarState extends State<RatingRow> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Row(
        children: List.generate(
          5,
          (index) {
            if (index < 4) {
              return const Icon(
                Icons.star,
                color: Colors.amber,
                size: 14,
              );
            } else {
              return const Icon(
                Icons.star_half,
                color: Colors.grey,
                size: 14,
              );
            }
          },
        ),
      )
    ]);
  }
}
