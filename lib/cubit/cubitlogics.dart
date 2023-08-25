import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testing_new_tools/cubit/app_cubit_status.dart';
import 'package:testing_new_tools/cubit/appcupits.dart';
import 'package:testing_new_tools/pages/WelcomePage.dart';


class appCubitlogic extends StatefulWidget {
  const appCubitlogic({Key? key}) : super(key: key);

  @override
  State<appCubitlogic> createState() => _appCubitlogicState();
}

class _appCubitlogicState extends State<appCubitlogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits,Cubitstates>(
        builder: (context,state){
          if (state is WelcomeState ){
            return  Welcomepage();
          }else{
            return Container();
          }

        },
      ),
    );
  }
}
