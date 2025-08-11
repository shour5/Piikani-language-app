Flutter BLoC (Cubit) App Architecture

A structured, scalable approach to implementing BLoC (Cubit) for medium-to-large Flutter projects.
🚀 Setup Instructions
Requirements

    Flutter SDK (3.0.0 or newer)

    Mason CLI (install via dart pub global activate mason_cli)

    Navigate to your project’s tools/mason_template folder and run:

cd tools/mason_template
mason get

🖥️ Adding a New Screen

Example: Creating a Login Screen

    Make the folder

lib/presentation/pages/authentication/login/

Generate with Mason

cd tools/mason_template
mason make page -o ${PATH_TO_LOGIN_FOLDER}

When prompted, type the screen name (e.g., login).

Register in GetIt
Open lib/service_locator/app_cubits.dart and add:

getIt.registerSingleton<LoginNavigator>(LoginNavigator(getIt())); 
getIt.registerSingleton<LoginCubit>(LoginCubit(navigator: getIt()));

Add a route
In lib/core/routes/app_router.dart:

    GoRoute(
      path: LoginPage.path,
      builder: (context, state) {
        return LoginPage(
          cubit: getIt(),
          initialParams: LoginPageInitialParams.fromMap(state.uri.queryParameters),
        );
      },
    ),

Navigation Without Parameters

Scenario: Navigating from Splash Screen to Login Screen

    In SplashCubit

        Add a method to trigger navigation, e.g. loginAction.

    In SplashNavigator

        Include the desired route:

class SplashNavigator with LoginRoute {
  SplashNavigator(this.navigator);

  @override
  late BuildContext context;

  @override
  late AppNavigator navigator;
}

    If navigating to multiple screens:

class SplashNavigator with LoginRoute, SignUpRoute, ForgetPasswordRoute {
  SplashNavigator(this.navigator);

  @override
  late BuildContext context;

  @override
  late AppNavigator navigator;
}

Trigger navigation in loginAction

void loginAction() {
  navigator.openLogin(LoginInitialParams());
}

Passing parameters

navigator.openLogin(
  LoginInitialParams(id: '1234', userName: 'John Doe'),
);

Access in LoginPage:

    final id = widget.initialParams.id;
    final userName = widget.initialParams.userName;

🎨 Theming (Fonts & Colors)

    Go to: lib/core/theme/dark_theme.dart (our app uses only dark theme)

    Update colors to match your Figma design.

    Font size example:

Text(
  "Example text",
  style: context.textTheme.bodyMedium,
)

    Font weight + color:

Text(
  "Styled text",
  style: context.textTheme.titleMedium?.copyWith(
    fontWeight: FontWeight.w700,
    color: context.colorTheme.secondary,
  ),
)

    Access theme colors:

context.colorTheme.secondary
context.colorTheme.primary

📁 Folder Layout

lib/
├── core/           # Core utilities & routing
│   ├── routes/
│   ├── themes/
│   └── utils/
├── data/           # Data layer
│   ├── models/
│   ├── repositories/
│   └── datasources/
├── presentation/   # UI & presentation logic
│   ├── pages/
│   ├── widgets/
│   └── cubits/
└── utils/          # Shared helpers

📌 Flutter Environment

Flutter
Version	Channel	Repo
3.32.5	stable	Flutter GitHub

Architecture & Features
Feature
Clean Architecture
REST API integration
BLoC (Cubit) state management

Engine
Revision
cb4b5fff73

Tools
Dart Version	DevTools Version
3.7.2	2.42.3
