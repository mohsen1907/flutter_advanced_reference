import 'package:flutter/material.dart';
import 'package:flutter_advanced_reference/core/helpers/spacing.dart';
import 'package:flutter_advanced_reference/core/widgets/app_text_form_field.dart';
import 'package:flutter_advanced_reference/features/login/ui/widgets/already_have_account_text.dart';
import 'package:flutter_advanced_reference/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: TextStyles.font24BlueBold,
              ),
              verticalSpace(8),
              Text(
                "Welcome Back We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: TextStyles.font14GreyRegular,
              ),
              verticalSpace(36),
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const CustomTextFormField(
                        hintText: "Email",
                      ),
                      verticalSpace(18),
                      CustomTextFormField(
                        hintText: "Password",
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      verticalSpace(18),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13BlueRegular,
                        ),
                      ),
                      verticalSpace(40),
                      AppTextButton(
                          buttonText: "Login",
                          textStyle: TextStyles.font16WhiteSemiBold,
                          onPressed: () {
                            if (formKey.currentState!.validate()) {}
                          }),
                      verticalSpace(16),
                      const TermsAndConditionsText(),
                      verticalSpace(60),
                      const AlreadyHaveAccountText()
                    ],
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
