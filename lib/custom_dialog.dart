import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final Function(String, String, String) onSubmit;

  const CustomDialog({required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Enter Information'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: const InputDecoration(labelText: 'Name'),
            onChanged: (value) {
              // Handle name changes if needed
            },
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Email'),
            onChanged: (value) {
              // Handle email changes if needed
            },
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Contact Number'),
            onChanged: (value) {
              // Handle contact number changes if needed
            },
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            // Get the entered values
            final name = ''; // Replace with actual name input
            final email = ''; // Replace with actual email input
            final contactNumber = ''; // Replace with actual contact number input

            // Validate input if necessary

            onSubmit(name, email, contactNumber);
            Navigator.of(context).pop();
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
