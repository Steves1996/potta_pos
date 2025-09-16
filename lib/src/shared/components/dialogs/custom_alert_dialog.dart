import 'package:flutter/material.dart';

enum AlertType {
  success,
  error,
  warning,
  info,
  question,
}

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String description;
  final List<Widget> buttons;
  final AlertType type;

  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.description,
    required this.buttons,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      title: Row(
        children: [
          _getIcon(),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      content: Text(
        description,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.grey,
        ),
      ),
      actions: buttons,
    );
  }

  Widget _getIcon() {
    switch (type) {
      case AlertType.success:
        return Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.green.withOpacity(0.1),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 24,
          ),
        );
      case AlertType.error:
        return Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.red.withOpacity(0.1),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(
            Icons.error,
            color: Colors.red,
            size: 24,
          ),
        );
      case AlertType.warning:
        return Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.orange.withOpacity(0.1),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(
            Icons.warning,
            color: Colors.orange,
            size: 24,
          ),
        );
      case AlertType.info:
        return Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.1),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(
            Icons.info,
            color: Colors.blue,
            size: 24,
          ),
        );
      case AlertType.question:
        return Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.purple.withOpacity(0.1),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(
            Icons.help,
            color: Colors.purple,
            size: 24,
          ),
        );
    }
  }

  // Méthode statique pour afficher facilement le dialog
  static Future<T?> show<T>({
    required BuildContext context,
    required String title,
    required String description,
    required List<Widget> buttons,
    required AlertType type,
    bool barrierDismissible = true,
  }) {
    return showDialog<T>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return CustomAlertDialog(
          title: title,
          description: description,
          buttons: buttons,
          type: type,
        );
      },
    );
  }
}

// Exemple d'utilisation
class ExampleUsage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Alert Dialog Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _showSuccessDialog(context),
              child: const Text('Success Dialog'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _showErrorDialog(context),
              child: const Text('Error Dialog'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _showWarningDialog(context),
              child: const Text('Warning Dialog'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _showInfoDialog(context),
              child: const Text('Info Dialog'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _showQuestionDialog(context),
              child: const Text('Question Dialog'),
            ),
          ],
        ),
      ),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    CustomAlertDialog.show(
      context: context,
      title: 'Succès',
      description: 'L\'opération a été effectuée avec succès !',
      type: AlertType.success,
      buttons: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('OK'),
        ),
      ],
    );
  }

  void _showErrorDialog(BuildContext context) {
    CustomAlertDialog.show(
      context: context,
      title: 'Erreur',
      description: 'Une erreur s\'est produite lors de l\'opération.',
      type: AlertType.error,
      buttons: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Fermer'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
            // Logique de retry
          },
          child: const Text('Réessayer'),
        ),
      ],
    );
  }

  void _showWarningDialog(BuildContext context) {
    CustomAlertDialog.show(
      context: context,
      title: 'Attention',
      description: 'Cette action ne peut pas être annulée. Êtes-vous sûr ?',
      type: AlertType.warning,
      buttons: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('Annuler'),
        ),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(true),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
          ),
          child: const Text('Continuer'),
        ),
      ],
    );
  }

  void _showInfoDialog(BuildContext context) {
    CustomAlertDialog.show(
      context: context,
      title: 'Information',
      description: 'Voici une information importante à retenir.',
      type: AlertType.info,
      buttons: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Compris'),
        ),
      ],
    );
  }

  void _showQuestionDialog(BuildContext context) {
    CustomAlertDialog.show(
      context: context,
      title: 'Question',
      description: 'Voulez-vous sauvegarder vos modifications ?',
      type: AlertType.question,
      buttons: [
        TextButton(
          onPressed: () => Navigator.of(context).pop('no'),
          child: const Text('Non'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop('cancel'),
          child: const Text('Annuler'),
        ),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop('yes'),
          child: const Text('Oui'),
        ),
      ],
    );
  }
}