import 'package:potta_pos/src/shared/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

AppBar appBarWithOutTitle(BuildContext context) {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      onPressed: () => Navigator.pop(context),
      icon: Icon(Icons.arrow_back, color: context.colorScheme.secondary),
    ),
  );
}
