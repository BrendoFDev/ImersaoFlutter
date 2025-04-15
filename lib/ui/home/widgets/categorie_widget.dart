import 'package:flutter/material.dart';
import 'package:myapp/ui/_core/app_colors.dart';

class CategorieWidget extends StatelessWidget {
  final String category;
  const CategorieWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(color: AppColors.lightBackgroundColor, borderRadius: BorderRadius.circular(12)),
    );
  }
}
