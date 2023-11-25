// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/common_widget/custom_text_form_field.dart';

/// [PasswordRecoveryEmailTextField] is a StatelessWidget representing a custom
/// email input field used for password recovery.
///
/// It utilizes the [CustomTextFormField] widget to display a text form field
/// specifically designed for capturing email input during password recovery.
/// It includes localization support for the hint text and validation error
/// message. Customized content padding is applied to enhance the visual
/// appearance of the input field.
class PasswordRecoveryEmailTextField extends StatelessWidget {
  const PasswordRecoveryEmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: TextEditingController(),
      hintText: "msg_username_or_email".tr(context),
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null) {
          return "err_msg_please_enter_valid_email".tr(context);
        }
        return null;
      },
      contentPadding: EdgeInsets.only(
        left: 15.myWidth,
        top: 12.myHeight,
        bottom: 12.myHeight,
      ),
    );
  }
}
