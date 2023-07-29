// 🐦 Flutter imports:
import 'package:bekam/data/cubit/user_verification_helper_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:bekam/core/utils/values.dart';
import 'package:bekam/data/cubit/providers/auth_provider.dart';
import 'package:bekam/data/cubit/providers/validators.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> with EmailAndPasswordValidators {
  SignupCubit() : super(SignupInitial());

  static SignupCubit get(BuildContext context) => BlocProvider.of(context);

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  TextEditingController get firstNameController => _firstNameController;
  TextEditingController get lastNameController => _lastNameController;
  TextEditingController get emailController => _emailController;
  TextEditingController get numberController => _numberController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get confirmPasswordController =>
      _confirmPasswordController;

//*-----------------------------------------------------------------------------------*/
//*------------------------  Controlling focus node  ---------------------------------*/
//*-----------------------------------------------------------------------------------*/
  final FocusNode _firstNameFocusNode = FocusNode();
  final FocusNode _lastNameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _confirmPasswordFocusNode = FocusNode();
  final FocusNode _phoneNumberFocusNode = FocusNode();

  FocusNode get firstNameFousNode => _firstNameFocusNode;
  FocusNode get lastNameFoxusNode => _lastNameFocusNode;
  FocusNode get emailFocusNode => _emailFocusNode;
  FocusNode get passwordFocusNode => _passwordFocusNode;
  FocusNode get confirmPasswordFocusNode => _confirmPasswordFocusNode;
  FocusNode get phoneNumberFocusNode => _phoneNumberFocusNode;

//*-----------------------------------------------------------------------------------*/
//*----------------  Passing Strings to complete sign in auth ----------------------*/
//*-----------------------------------------------------------------------------------*/
  bool _submitted = false;
  bool _isLoading = false;
  bool _isHidden = true;

  bool get isSubmitted => _submitted;
  bool get isLoading => _isLoading;
  bool get isHidden => _isHidden;

  void firsNameEditingControl(BuildContext context) {
    final FocusNode newFocus = _lastNameFocusNode;
    FocusScope.of(context).requestFocus(newFocus);
  }

  void lastNameEditingControl(BuildContext context) {
    final FocusNode newFocus = _emailFocusNode;
    FocusScope.of(context).requestFocus(newFocus);
  }

  void emailEditingControl(BuildContext context) {
    final FocusNode newFocus = _phoneNumberFocusNode;
    FocusScope.of(context).requestFocus(newFocus);
  }

  void phoneNumbereditingControl(BuildContext context) {
    final FocusNode newFocus = _passwordFocusNode;
    FocusScope.of(context).requestFocus(newFocus);
  }

  void passwordEditingControl(BuildContext context) {
    final FocusNode newFocus = _confirmPasswordFocusNode;
    FocusScope.of(context).requestFocus(newFocus);
  }

  /// toogle is hodden
  void toggleIsHidden() {
    _isHidden = !_isHidden;
    emit(ToggleHiddenPassword());
  }

//*-----------------------------------------------------------------------------------*/
//*-----------------  update state when entering a new letter -----------------------*/
//*-----------------------------------------------------------------------------------*/
  updateState() {
    emit(UpdateState());
  }

  void submit(BuildContext context) async {
    _submitted = true;
    _isLoading = true;
    emit(ToggleLoadingState());
    try {
      final auth = Auth();
      final User? user = await auth.createUserWithEmailAndPassword(
        emailController.text,
        passwordController.text,
        '${firstNameController.text} ${lastNameController.text}',
        numberController.text,
   
      );
      if (user != null) {
        user.updateDisplayName(
            firstNameController.text + lastNameController.text);
        // ignore: use_build_context_synchronously
        UserVerificationHelperCubit.get(context).sendVerificationEmail(context);
      }
    } on Exception catch (e) {
      GlobalAppFunctions.showExceptionAlertDaialog(
        context,
        title: "Sign up failed",
        exception: e,
      );
    } finally {
      _isLoading = false;
      emit(ToggleLoadingState());
    }
  }

//*-----------------------------------------------------------------------------------*/
//*-------------------  Enabling/ disabling submitting mail --------------------------*/
//*-----------------------------------------------------------------------------------*/
  bool submitCheck() {
    bool submitEnabled = emailValidator.isValid(emailController.text) &&
        emailValidator.isCorrect(emailController.text) &&
        passwordValidator.isValid(passwordController.text) &&
        typicalPassword() &&
        nameExists() &&
        phoneNumberExists() &&
        !_isLoading;

    return submitEnabled;
  }

  bool nameExists() {
    return firstNameController.text.isNotEmpty &&
        lastNameController.text.isNotEmpty;
  }

  bool phoneNumberExists() {
    return numberController.text.isNotEmpty;
  }

  bool typicalPassword() {
    return passwordController.text == confirmPasswordController.text &&
        passwordController.text.isNotEmpty;
  }

  bool emailValid() {
    return emailValidator.isValid(emailController.text);
  }

  bool passwordValid() {
    return passwordValidator.isValid(passwordController.text);
  }

  bool emailCorrect() {
    return emailValidator.isCorrect(emailController.text);
  }

//*-----------------------------------------------------------------------------------*/
//*-----------------  showing submitting error alert dialog --------------------------*/
//*-----------------------------------------------------------------------------------*/
  void submitErrorDialog(BuildContext context) {
    String? errorTitle;
    String? errorBody;

    if (!nameExists()) {
      errorTitle = "Name Fields are empty";
      errorBody = "The Name Fields can't be empty";
    } else if (emailValid() == false && passwordValid() == false) {
      errorTitle = "Email/Pass are empty";
      errorBody = "The Email and password field Can't be empty";
    } else if (emailValid() == true && passwordValid() == false) {
      errorTitle = "Pass is empty";
      errorBody = "The password field can't be empty";
    } else if (emailValid() == false && passwordValid() == true) {
      errorTitle = "Email is empty";
      errorBody = "The Email field can't be empty";
    } else if (emailValid() == true &&
        passwordValid() == true &&
        emailCorrect() == false) {
      errorTitle = "Email is not valid";
      errorBody =
          "The Email is not valid, please enter a valid email.\nThe email must contain '@yahoo' or '@gmail' or'@hotmail' ";
    } else if (emailValid() == true &&
        passwordValid() == true &&
        emailCorrect() == true &&
        typicalPassword() == false) {
      errorTitle = "Different password";
      errorBody =
          "You entered different password, please enter typical passwords";
    } else if (!phoneNumberExists()) {
      errorTitle = "Empty phone no.";
      errorBody = "The Phone umber can't be empty";
    }

    GlobalAppFunctions.confirmCopyLink(context,
        title: errorTitle!, content: errorBody!, defaultActionText: "OK");
  }
}
