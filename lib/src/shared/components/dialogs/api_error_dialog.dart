import 'package:potta_pos/src/core/i18n/l10n.dart';
import 'package:flutter/material.dart';

class ApiErrorDialog {
  static void show({
    required BuildContext context,
    required String error,
  }) {
    showDialog(
      context: context,
      useRootNavigator: false,
      builder: (context) {
        return AlertDialog.adaptive(
          content: Text(error),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Okay'),
            ),
          ],
        );
      },
    );
  }
}
