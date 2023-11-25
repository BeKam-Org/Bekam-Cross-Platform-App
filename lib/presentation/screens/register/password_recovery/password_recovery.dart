// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:auto_route/auto_route.dart';

// 🌎 Project imports:
import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/common_widget/custom_elevated_button.dart';
import 'package:bekam/presentation/common_widget/custom_image_view.dart';
import 'package:bekam/presentation/widgets/register/password_recovery/password_recovery_email_text_field.dart';

/// [PasswordRecoveryPage] is a StatelessWidget that represents the password recovery page of the application.
@RoutePage()
class PasswordRecoveryPage extends StatelessWidget {
  const PasswordRecoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // GlobalKey for managing the form state
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Get.colorScheme.onPrimaryContainer,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 35.myWidth,
              vertical: 0.myHeight,
            ),
            child: Column(
              children: [
                // Displaying the app logo using CustomImageView
                CustomImageView(
                  imagePath: GlobalAppSVG.appLogo,
                  height: (160 * 1.5).myHeight,
                  width: (177 * 21.5).myWidth,
                ),
                SizedBox(height: 20.myHeight),
                // Displaying the password recovery title
                Text(
                  "msg_password_recovery".tr(context),
                  style: Get.textTheme.headlineSmall,
                ),
                SizedBox(height: 6.myHeight),
                // Displaying the instruction to enter the email
                Text(
                  "msg_enter_your_email".tr(context),
                  style: CustomTextStyles.bodyMediumBluegray40001_3,
                ),
                SizedBox(height: 25.myHeight),
                // Password recovery email text field
                const PasswordRecoveryEmailTextField(),
                SizedBox(height: 24.myHeight),
                // Custom elevated button for initiating password recovery
                CustomElevatedButton(
                  text: "lbl_sign_in".tr(context),
                ),
                SizedBox(height: 5.myHeight),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
