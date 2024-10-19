import 'package:doctor_hunt/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1, // Adjust this scale to fit your needs
      child: Checkbox(
        materialTapTargetSize:
            MaterialTapTargetSize.shrinkWrap, // Shrinks tap target area
        activeColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          //! TODO: Radius Must Be Responsive ...
          borderRadius: BorderRadius.circular(12),
        ),
        value: _isChecked,
        onChanged: (bool? value) {
          setState(() {
            _isChecked = value ?? false;
          });
        },
      ),
    );
  }
}
