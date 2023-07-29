import 'package:bekam/core/utils/values.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_verification_helper_state.dart';

class UserVerificationHelperCubit extends Cubit<UserVerificationHelperState> {
  static UserVerificationHelperCubit get(BuildContext context) =>
      BlocProvider.of(context);

  UserVerificationHelperCubit() : super(UserVerificationHelperInitial());

  bool _isEmailVerified = FirebaseAuth.instance.currentUser == null
      ? false
      : FirebaseAuth.instance.currentUser!.emailVerified;
  bool _canResendEmail = true;
  bool _isLoading = true;

  bool get canResentEmail => _canResendEmail;
  bool get isEmailVerified => _isEmailVerified;
  bool get isLoading => _isLoading;

  //*---------------------------- Send Email Verification ------------------------------------*/
  Future sendVerificationEmail(BuildContext context) async {
    try {
      final user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();
      // ignore: use_build_context_synchronously
      GlobalAppFunctions.confirmCopyLink(context,
          title: 'Mail sent',
          content:
              "Mail have been successfully sent to you, please check your mail & your spam",
          defaultActionText: "Ok");
      preventResentWithDeleay();
    } catch (e) {
      GlobalAppFunctions.confirmCopyLink(context,
          title: "Error!", content: e.toString(), defaultActionText: "ok");
    }
  }

  preventResentWithDeleay() async {
    _canResendEmail = false;
    emit(PreventResend());
    await Future.delayed(const Duration(seconds: 60));
    _canResendEmail = true;
    emit(AllowResend());
  }

  void endVerificationProcess() {
    emit(CheckEmailVerificationDone());
  }

  Future checkEmailVerified() async {
    print("###################### check Email #######################");
    if (FirebaseAuth.instance.currentUser != null) {
      await FirebaseAuth.instance.currentUser!.reload();
      _isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
      _isLoading = false;
      emit(CheckingEmailVerification());
    }
  }
}
