// 🌎 Project imports:
import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/presentation/common_widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

/// [SignupPasswordTextField] is a StatelessWidget representing a custom password
/// input field used for user registration (signup).
///
/// It utilizes the [CustomTextFormField] widget to display a secure text form
/// field specifically designed for capturing password input during user registration.
/// It includes localization support for the hint text and validation error
/// message.
class SignupPasswordTextField extends StatelessWidget {
  const SignupPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: TextEditingController(),
      hintText: "lbl_password".tr(context),
      textInputType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
      validator: (value) {
        if (value == null) {
          return "err_msg_please_enter_valid_email".tr(context);
        }
        return null;
      },
      obscureText: true,
    );
  }
}
