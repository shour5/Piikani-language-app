import 'package:flutter/material.dart';
import 'core/routes/app_router.dart';
import 'core/theme/light_theme.dart';
import 'core/utils/constants.dart';
import 'presentation/widgets/something_went_wrong.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      builder: (BuildContext context, Widget? child) {
        ErrorWidget.builder = (errorDetails) => const SomethingWentWrong();
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: TextScaler.noScaling,
          ),
          child: child!,
        );
      },
      title: kAppName,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      //darkTheme: DARK_THEME,
    );
  }
}
