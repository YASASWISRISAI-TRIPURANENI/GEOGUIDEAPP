import 'package:flutter/material.dart';

// Helper function to show Snackbar
void showSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
    ),
  );
}

// Helper function to format dates
String formatDate(DateTime date) {
  // You can use the intl package for more complex formatting
  return '${date.day}/${date.month}/${date.year}';
}

// Helper function to check for valid email format
bool isValidEmail(String email) {
  final regex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
  return regex.hasMatch(email);
}

// Helper function to validate phone numbers (just a basic example)
bool isValidPhone(String phone) {
  final regex = RegExp(r'^\+?[1-9]\d{1,14}$');
  return regex.hasMatch(phone);
}
