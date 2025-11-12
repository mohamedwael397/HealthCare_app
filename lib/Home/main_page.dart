import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healthcare/Home/cubit/cubit.dart';
import 'package:healthcare/Home/cubit/states.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => appcubit(),
      child: BlocConsumer<appcubit, States>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = appcubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            body: cubit.bottomscreens[cubit.current_index],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: Color(0xFF407CE2),
              unselectedItemColor: Colors.grey,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/Home.svg",
                    color: cubit.current_index == 0
                        ? Color(0xFF407CE2)
                        : Colors.grey,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/Frame 5.svg",
                    color: cubit.current_index == 1
                        ? Color(0xFF407CE2)
                        : Colors.grey,
                  ),
                  label: "Reports",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/7503212_notification_bell_alert_icon 2.svg",
                    color: cubit.current_index == 2
                        ? Color(0xFF407CE2)
                        : Colors.grey,
                  ),
                  label: "Notifications",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/Profile.svg",
                    color: cubit.current_index == 3
                        ? Color(0xFF407CE2)
                        : Colors.grey,
                  ),
                  label: "Profile",
                ),
              ],
              onTap: (value) {
                cubit.onchange(value);
              },
              currentIndex: cubit.current_index,
            ),
          );
        },
      ),
    );
  }
}
