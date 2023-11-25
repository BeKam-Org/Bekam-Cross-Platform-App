// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:auto_route/auto_route.dart';

// 🌎 Project imports:
import 'package:bekam/core/helper/localization_extension.dart';
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/presentation/common_widget/custom_elevated_button.dart';
import 'package:bekam/presentation/common_widget/custom_image_view.dart';
import 'package:bekam/presentation/widgets/register/common/facebook_login_btn.dart';
import 'package:bekam/presentation/widgets/register/common/google_login_btn.dart';
import 'package:bekam/presentation/widgets/register/common/or_widget.dart';
import 'package:bekam/presentation/widgets/register/login/login_email_text_field.dart';
import 'package:bekam/presentation/widgets/register/login/login_password_text_field.dart';

/// [LoginPage] is a StatelessWidget that represents the login page of the application.
@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // GlobalKey for managing the form state
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Get.colorScheme.onPrimaryContainer,
        body: Form(
          key: formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
                horizontal: 35.myWidth, vertical: 42.myHeight),
            child: Column(
              children: [
                SizedBox(
                  height: 16.myHeight,
                ),
                // Displaying the app logo using CustomImageView
                CustomImageView(
                  imagePath: GlobalAppImages.appLogo,
                  height: 160.myHeight,
                  width: 177.myWidth,
                ),
                SizedBox(height: 47.myHeight),
                // Displaying the welcome message
                Text(
                  "lbl_welcome_back".tr(context),
                  style: Get.textTheme.headlineSmall,
                ),
                SizedBox(height: 7.myHeight),
                // Displaying the hello message with an option to create a new account
                SizedBox(
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "msg_hello_jos_sign2".tr(context),
                        style: CustomTextStyles.bodyMediumBluegray40001
                            .copyWith(height: 1.71),
                      ),
                      TextSpan(
                        text: "msg_create_new_account".tr(context),
                        style: CustomTextStyles.bodyMediumPrimary,
                      )
                    ]),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20.myHeight),
                // Login email text field
                const LogunEmailTextField(),
                SizedBox(height: 8.myHeight),
                // Login password text field
                const LoginPasswordTextField(),
                SizedBox(height: 16.myHeight),
                // Custom elevated button for signing in
                CustomElevatedButton(
                  text: "lbl_sign_in".tr(context),
                ),
                SizedBox(height: 19.myHeight),
                // Forgot password message
                Text(
                  "msg_forgot_password".tr(context),
                  style: CustomTextStyles.labelLargePrimary,
                ),
                SizedBox(height: 19.myHeight),
                // Or widget for visual separation
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
