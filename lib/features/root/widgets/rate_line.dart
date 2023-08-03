
import 'package:flutter/material.dart';

class RateLine extends StatelessWidget {
  const RateLine({
    super.key,
    this.stars = 5,
  });

  final int stars;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: false,
          groupValue: true,
          onChanged: (v) {},
        ),
        const SizedBox(width: 8),
        ...List.generate(
          5,
          (index) => const Icon(
            Icons.star,
            color: Colors.orange,
            size: 16,
          ),
        ),
        const SizedBox(width: 8),
        const Text('4.5 & up'),
      ],
    );
  }
}
