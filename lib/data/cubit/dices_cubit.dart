import 'package:bekam/data/model/dices_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'dices_state.dart';

class DicesCubit extends Cubit<DicesState> {
  static DicesCubit get(BuildContext context) => BlocProvider.of(context);
  DicesCubit() : super(DicesInitial()) {
    makeDiscs();
  }

  void changeDices() {
    makeDiscs();
    emit(ChangeDices());
  }
  
}