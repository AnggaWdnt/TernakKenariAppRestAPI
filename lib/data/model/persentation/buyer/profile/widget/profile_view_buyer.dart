import 'package:canary_template/core/core.dart';
import 'package:flutter/material.dart';

class ProfileViewBuyer extends StatelessWidget {
  final Data profile;
  const ProfileViewBuyer({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          
        ),
      ),
    );
  }
}
