import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/themeing/text_style.dart' show AppTextStyles;
import 'package:flutter/material.dart';

class PasswordValidator extends StatelessWidget {
  const PasswordValidator({super.key, required this.hasUppercase, required this.hasLowercase, required this.hasSpecialCharacters, required this.hasMinLength, required this.hasNumber});
  final bool hasUppercase;
  final bool hasLowercase;
  final bool hasSpecialCharacters;
  final bool hasMinLength;
  final bool hasNumber;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
 
     
      buildValidationRow("At least one uppercase letter", hasUppercase),
      Spacing.verticalSpacing(8),

      buildValidationRow("At least one lowercase letter", hasLowercase),
      Spacing.verticalSpacing(8),
      buildValidationRow("At least one number", hasNumber),
      Spacing.verticalSpacing(8),
      buildValidationRow("At least one special character", hasSpecialCharacters),
      Spacing.verticalSpacing(8),
      buildValidationRow("Minimum 8 characters", hasMinLength),
      

        
      ],
    );
  }
  
 Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        CircleAvatar(
          radius:2.5,
          backgroundColor:  Colors.grey,
 
          
        
        ),
          Spacing.horizontalSpacing(8),
          Text(
            text,
            style: AppTextStyles.text12Black().copyWith(
              decoration: hasValidated ? TextDecoration.lineThrough : TextDecoration.none,
              decorationColor: Colors.green,
              decorationThickness: 2,
              color: hasValidated ? Colors.grey : Colors.black,  
            ),
          ),
      ],
    );
  }

}
