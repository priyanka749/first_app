
import 'package:first_app/view/student_details_view.dart';
import 'package:first_app/view/student_output_view.dart';
import 'package:flutter/material.dart';

// final
// const

// HOT RELOAD
void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const StudentDetailsView(),
        '/output': (context) => const StudentOutputView(),
      },
    ),
  );
}