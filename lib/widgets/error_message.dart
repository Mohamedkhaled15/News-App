import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(child: Image.asset('assets/images/error.png',fit: BoxFit.contain),);
  }
}