import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tenmanga/custom_theme.dart';
import 'package:tenmanga/screens/books_screen/books_screen.dart';

import 'screens/home_screen/home_screen.dart';
import 'screens/information_screen/information_screen.dart';
import 'screens/others_screen/others_screen.dart';
import 'screens/schedule_screen/schedule_screen.dart';
import 'screens/settings/components/settings_controller.dart';
import 'screens/settings/settings_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.settingsController,
  }) : super(key: key);
  static const String _title = 'Ten';
  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: _title,
          restorationScopeId: 'app',
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English, no country code
          ],
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,
          theme: CustomTheme.lightTheme,
          darkTheme: CustomTheme.darkTheme,
          themeMode: settingsController.themeMode,
          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case SettingsScreen.routeName:
                    return SettingsScreen(controller: settingsController);
                  case BooksScreen.routeName:
                    return BooksScreen();
                  case InformationScreen.routeName:
                    return InformationScreen();
                  case OthersScreen.routeName:
                    return OthersScreen();
                  case ScheduleScreen.routeName:
                    return ScheduleScreen();
                  case HomeScreen.routeName:
                  default:
                    return HomeScreen();
                }
              },
            );
          },
        );
      },
    );
  }
}
