part of 'user_verification_helper_cubit.dart';

@immutable
abstract class UserVerificationHelperState {}

class UserVerificationHelperInitial extends UserVerificationHelperState {}

class CheckEmailVerificationDone extends UserVerificationHelperState{}
class CheckingEmailVerification extends UserVerificationHelperState{}

class LoadingState extends UserVerificationHelperState {}

class PreventResend extends UserVerificationHelperState {}

class AllowResend extends UserVerificationHelperState {}