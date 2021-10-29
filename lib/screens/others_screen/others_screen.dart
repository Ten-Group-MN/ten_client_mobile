import 'package:flutter/material.dart';
import 'package:tenmanga/constants.dart';
import 'package:tenmanga/screens/settings/settings_screen.dart';

class OthersScreen extends StatelessWidget {
  const OthersScreen({Key? key}) : super(key: key);
  static const routeName = '/othersScreen';
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                    ),
                    shape: BoxShape.circle),
                child: Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    child: Image.asset(
                      "assets/images/flutter_logo.png",
                      fit: BoxFit.cover,
                      height: 90.0,
                      width: 90.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "DOKIND IS SHIT",
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                "DOKIND IS SHIT",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SettingsScreen.routeName);
                    },
                    child: Text(
                      "Settings",
                      style: Theme.of(context).textTheme.button,
                    ),
                    style: ButtonStyle(),
                  ),
                  const SizedBox(width: 30.0),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Get premium",
                        style: Theme.of(context).textTheme.button,
                      ))
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
