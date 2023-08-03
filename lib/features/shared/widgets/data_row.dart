import 'package:flutter/material.dart';

class StyledDataRow extends StatelessWidget {
  const StyledDataRow({
    super.key,
    required this.label,
    this.subLabel,
    required this.data,
  });

  final String label;
  final String? subLabel;

  final Widget data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              // decoration: BoxDecoration(border: Border.all()),
              child: Text(label, style: Theme.of(context).textTheme.bodyLarge),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: data,
            ),
          ),
        ],
      ),
    );
  }
}
