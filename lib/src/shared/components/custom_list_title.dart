import 'package:potta_pos/src/shared/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CustomListTitle extends StatelessWidget {
  final String title;
  final String value;
  const CustomListTitle({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                value,
                maxLines: 4,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: context.colorScheme.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
