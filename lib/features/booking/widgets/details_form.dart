import 'package:flutter/material.dart';
import 'package:flutter_layout_travel_app/shared/widgets/widgets.dart';
import 'package:flutter_layout_travel_app/uikit/ui_colors.dart';

class DetailsForm extends StatelessWidget {
  const DetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Fill The Details',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: UIColor.purple)),
      const SizedBox(height: 12),
      const Text('User Name'),
      const SizedBox(height: 6),
      const CustomTextField(),
      const Text('Country'),
      const SizedBox(height: 6),
      const CustomTextField(),
      const SizedBox(height: 12),
      const Text('Team Size'),
      const SizedBox(height: 12),
      Row(
        children: [
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: UIColor.purple),
            width: 78,
            height: 78,
            child: const Center(
              child: Text(
                '3',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 46),
              ),
            ),
          )
        ],
      )
    ]);
  }
}
