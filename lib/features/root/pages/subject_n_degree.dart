import 'package:eduapp_flutter/features/root/pages/degree_side.dart';
import 'package:eduapp_flutter/features/root/pages/subject_side.dart';
import 'package:flutter/material.dart';

class SubjectAndDegreePage extends StatelessWidget {
  const SubjectAndDegreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.center,
          child: Row(
            children: [
              Expanded(
                child: SubjectSide(),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: DegreeSide(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}