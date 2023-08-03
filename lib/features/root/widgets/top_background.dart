import 'package:eduapp_flutter/features/root/widgets/school_info_sheet.dart';
import 'package:flutter/material.dart';

class TopBackgroundSection extends StatelessWidget {
  const TopBackgroundSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: topPositioned,
      color: Colors.grey.shade200,
    );
  }
}
