// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// 🌎 Project imports:
import 'package:bekam/data/model/registeration_type.dart';

part 'registeration_type_dart_state.dart';

class RegisterationTypeDartCubit extends Cubit<RegisterationTypeDartState> {
  static RegisterationTypeDartCubit get(BuildContext context) =>
      BlocProvider.of(context);

  RegisterationTypeDartCubit() : super(RegisterationTypeDartInitial());

  RegistrationType _type = RegistrationType.login;

  RegistrationType get type => _type;

  void toggleRegisterationType(RegistrationType registrationType) {
    // if (_type == RegistrationType.login) {
    //   _type = RegistrationType.signup;
    // } else {
    //   _type = RegistrationType.login;
    // }
    _type = registrationType;
    emit(ChangeRegisterationType());
  }
}
