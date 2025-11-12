import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthcare/Home/bottom_screens/home.dart';
import 'package:healthcare/Home/bottom_screens/notifications.dart';
import 'package:healthcare/Home/bottom_screens/profile.dart';
import 'package:healthcare/Home/bottom_screens/reports.dart';
import 'package:healthcare/Home/cubit/states.dart';

class appcubit extends Cubit<States> {
  appcubit() : super(initialstate());

  static appcubit get(context) => BlocProvider.of(context);

  int current_index = 0;

  List<Widget> bottomscreens = [Home(), Reports(), Notifications(), Profile()];

  void onchange(index) {
    current_index = index;
    emit(onchangestate());
  }
}
