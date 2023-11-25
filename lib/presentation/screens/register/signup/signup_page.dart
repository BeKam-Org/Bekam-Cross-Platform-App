// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:auto_route/auto_route.dart';

// 🌎 Project imports:
import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/common_widget/custom_image_view.dart';
import 'package:bekam/presentation/widgets/register/common/facebook_login_btn.dart';
import 'package:bekam/presentation/widgets/register/common/google_login_btn.dart';
import 'package:bekam/presentation/widgets/register/common/or_widget.dart';
import 'package:bekam/presentation/widgets/register/signup/signup_email_text_field.dart';
import 'package:bekam/presentation/widgets/register/signup/signup_password_text_field.dart';

/// [SignUpPage] is a StatelessWidget that represents the sign-up page of the application.
@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
              vertical: 58.myHeight,
            ),
            child: Column(
              children: [
                // Displaying the app logo using CustomImageView
                CustomImageView(
                  imagePath: GlobalAppImages.appLogo,
                  height: 160.myHeight,
                  width: 177.myWidth,
                ),
                SizedBox(height: 17.myHeight),
                // Displaying the greeting for creating an account
                Text(
                  "msg_hello_create_account".tr(context),
                  style: Get.textTheme.headlineSmall,
                ),
                SizedBox(
                  height: 4.myHeight,
                ),
                // Displaying the prompt for already having an account
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "msg_already_have_an2".tr(context),
                          style: CustomTextStyles.bodyMediumBluegray40001),
                      TextSpan(
                          text: "lbl_sign_in".tr(context),
                          style: CustomTextStyles.bodyMediumPrimary)
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 36.myHeight,
                ),
                // Sign-up email text field
                const SignupEmailTextField(),
                SizedBox(height: 8.myHeight),
                // Sign-up password text field
                const SignupPasswordTextField(),
                SizedBox(height: 16.myHeight),
                // Common 'or' widget
                const OrWidget(),
                SizedBox(height: 18.myHeight),
                // Facebook login button
                const FacebookLoginButton(),
                SizedBox(height: 8.myHeight),
                // Google login button
                const GoogleLoginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
