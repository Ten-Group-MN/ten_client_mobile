import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tenmanga/constants.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);
  static const routeName = '/scheduleScreen';
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 40,
          width: 40,
          child: SvgPicture.asset(
            homeIcon,
            // color: mainColor,
            // Color(0x00fc4c4e)
            currentColor: mainColor,
          ),
        )
      ],
    );
  }
}
