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
      create: (context) => appcubit(), // تأكد أن اسم الكلاس صحيح
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
              selectedItemColor: const Color(0xFF407CE2),
              unselectedItemColor: Colors.grey,
              currentIndex: cubit.current_index,
              onTap: (value) {
                cubit.onchange(value);
              },
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/Home.svg",
                    color: cubit.current_index == 0
                        ? const Color(0xFF407CE2)
                        : Colors.grey,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/Frame 5.svg",
                    color: cubit.current_index == 1
                        ? const Color(0xFF407CE2)
                        : Colors.grey,
                  ),
                  label: "Reports",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/7503212_notification_bell_alert_icon 2.svg",
                    color: cubit.current_index == 2
                        ? const Color(0xFF407CE2)
                        : Colors.grey,
                  ),
                  label: "Notifications",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/icons/Profile.svg",
                    color: cubit.current_index == 3
                        ? const Color(0xFF407CE2)
                        : Colors.grey,
                  ),
                  label: "Profile",
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
