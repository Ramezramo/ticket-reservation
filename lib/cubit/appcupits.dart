import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_new_tools/cubit/app_cubit_status.dart';

class AppCubits extends Cubit<Cubitstates>{
  AppCubits():super(initialState()){
    emit(WelcomeState());
  }

}