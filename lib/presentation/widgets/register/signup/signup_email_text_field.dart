// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/presentation/common_widget/custom_text_form_field.dart';

/// [SignupEmailTextField] is a StatelessWidget representing a custom email input
/// field used for user registration (signup).
///
/// It utilizes the [CustomTextFormField] widget to display a text form field
/// specifically designed for capturing email input during user registration.
/// It includes localization support for the hint text and validation error
/// message.
class SignupEmailTextField extends StatelessWidget {
  const SignupEmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: TextEditingController(),
      hintText: "msg_username_or_email".tr(context),
      textInputType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      validator: (value) {
        if (value == null) {
          return "err_msg_please_enter_valid_email".tr(context);
        }
        return null;
      },
    );
  }
}
