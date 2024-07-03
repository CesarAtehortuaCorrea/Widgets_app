import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {

    static const name = 'Snackbar_screen';

  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar y Diálogos'),
      ),
      body: Text('HOla'),
    );
  }
}