import 'package:flutter/material.dart';

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('To state on not to state'),
          content: const Text(
              'I understand I should never use a StatefullWidget when a Stateless can do the job.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Yes :)'),
              child: const Text('Yes :)'),
            ),
          ],
        ),
      ),
      child: const Text('Show warning'),
    );
  }
}
