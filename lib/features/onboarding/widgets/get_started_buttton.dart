import 'package:flutter/material.dart';
import 'package:flutter_advanced_reference/core/helpers/extensions.dart';
import 'package:flutter_advanced_reference/core/routing/routes.dart';
import 'package:flutter_advanced_reference/core/theming/colors.dart';

import '../../../core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 52)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),

      ),
        onPressed: (){
        context.navigateTo(Routes.loginScreen);
    }, child:  Text("Get Started",style: TextStyles.font16WhiteSemiBold));
  }
}
