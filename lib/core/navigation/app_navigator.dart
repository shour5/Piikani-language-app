import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../utils/constants.dart';
import '../extensions/theme_extension.dart';


class AppNavigator {
  static final GlobalKey<NavigatorState> navigatorKey =
  GlobalKey<NavigatorState>();
  static final RouteObserver<PageRoute> routeObserver =
  RouteObserver<PageRoute>();

  push(BuildContext context, String path) {
    context.push(path);
  }

  replace(BuildContext context, String path,Object? parameter) {
    context.replace(path,extra: parameter);
  }

  pushAndClearAllPrevious(BuildContext context, String path) {
    while (context.canPop() == true) {
      context.pop();
    }
    context.pushReplacement(path);
  }

  showBottomSheet(BuildContext context, Widget page,
      {double? height, EdgeInsets? padding}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) =>  Padding(
        padding: MediaQuery.of(context).viewInsets.copyWith(left: 20,right: 20,top: 20),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          clipBehavior: Clip.antiAlias,
          // Set clipBehavior to Clip.antiAlias
          child: page,
        ),
      ),
    );
  }

  pop(BuildContext context) {
    if(context.canPop()){
      context.pop();
    }
  }

  showDialogBox(BuildContext context, Widget page) {
    showDialog(
        context: context,
        useSafeArea: true,
        builder: (ctx) {
          return Scaffold(
              backgroundColor: Colors.transparent,
              body: Stack(
                children: [
                  // Blurred background
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                    child: Container(
                      color: Colors.black.withOpacity(0.1), // Add a slight tint
                    ),
                  ),
                  Center(
                      child: Container(
                        padding: const EdgeInsets.all(kScreenPadding),
                        constraints: const BoxConstraints(
                          maxWidth: 800,
                        ),
                        margin: const EdgeInsets.symmetric(
                            horizontal: kScreenPadding,vertical: 20),
                        decoration: BoxDecoration(
                          color: context.colorTheme.surface,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: page,
                      )),
                ],
              ));
        });
  }
}
