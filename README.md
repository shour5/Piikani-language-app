mason
# Flutter BLoC (Cubit) Architecture

A scalable BLoC (Cubit) architecture implementation for large-scale Flutter applications.

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (version 3.0.0 or higher)
- Mason CLI (install via `dart pub global activate mason_cli`)
- goto your 'PROJECT_FOLDER => tools => mason_template' and run 'mason get'.
```bash
cd tools/mason_template
mason get
```

## 🖥️ Creating New Screens

To create a new screen (e.g., Login screen):

1. Create a folder structure:
   ```
   lib/presentation/pages/authentication/login/
   ```

2. Generate screen files using Mason:
   ```bash
   cd tools/mason_template
   mason make page -o ${PATH_TO_LOGIN_FOLDER}
   ```
   When prompted:
    - Enter the screen name (e.g., "login")

3. Register new screen Navigator + Cubit into GetIt:
    - Add your Cubit and Navigator in `lib/service_locator/app_cubits.dart`
    - Example:
      ```dart
      getIt.registerSingleton<LoginNavigator>(LoginNavigator(getIt())); 
      getIt.registerSingleton<LoginCubit>(LoginCubit(navigator: getIt()));
      ```

4. Add Route:
    - Register your new screen route in `lib/core/routes/app_router.dart`
    - Example:
    ```dart
    GoRoute(
        path: LoginPage.path,
        builder: (context, state) {
          return LoginPage(
            cubit: getIt(),
            initialParams:
                LoginPageInitialParams.fromMap(state.uri.queryParameters),
          );
        },
      ),
    ```

# Navigation without parameter

1) For example, you are on the **Splash Screen** and you want to navigate to the **Login Screen**, you have to follow these steps:

- Go to your **SplashCubit**, create an action method that will be called on button tap on Splash screen.  
  Example: you can create a method called `loginAction`.

- Go to your **SplashNavigator** and add a Route of the screen where you want to navigate like below:

```dart
class SplashNavigator with LoginRoute {
  SplashNavigator(this.navigator);

  @override
  late BuildContext context;

  @override
  late AppNavigator navigator;
}
```

- In case you want to navigate to multiple screens from Splash, you can add more routes like:

```dart
class SplashNavigator with LoginRoute, SignUpRoute, ForgetPasswordRoute {
  SplashNavigator(this.navigator);

  @override
  late BuildContext context;

  @override
  late AppNavigator navigator;
}

```

- Now, inside your loginAction method in SplashCubit, you can navigate like this:
```dart
void loginAction() {
  navigator.openLogin(
    LoginInitialParams(
      /// you can create and pass parameters here if needed
    ),
  );
}
```
- Thus, the new screen will be opened.

- If you want to pass data to the next screen, send it inside InitialParams

```dart
navigator.openLogin(
  LoginInitialParams(
    id: '1234',
    userName: 'John Doe',
  ),
);
```

- In your LoginPage, access the parameters:
```dart
final id = widget.initialParams.id;
final userName = widget.initialParams.userName;
```
---


# Theme (font size, color)
- Goto lib -> core -> theme -> dark_theme OR light_theme
- As our app is using dark theme so only change/update that file. No need to make changes in light_theme
- Setup colors according to your figma design
- In order to access different font sizes to text, you can access like this
```dart
Text(
"This text tells how to assign font sizes",
style: context.textTheme.bodyMedium,
)
```
- OR
```dart
Text(
"This text tells how to assign font weights",
style: context.textTheme.titleMedium?.copyWith(
fontWeight: FontWeight.w700,
color: context.colorTheme.secondary,
),
),
```
- In order to give different colors to any widget you can access it from theme
```dart
context.colorTheme.secondary
context.colorTheme.primary

```

## 📁 Project Structure

```
lib/
├── core/
│   ├── routes/          # Application routing
│   ├── themes/          # App themes
│   └── utils/           # Core utilities
├── data/
│   ├── models/          # Data models
│   ├── repositories/    # Data repositories
│   └── datasources/     # Local/remote datasources
├── presentation/
│   ├── pages/           # Screen implementations
│   ├── widgets/        # Reusable widgets
│   └── cubits/         # Presentation logic
└── utils/               # Application utilities
```


# Flutter Information

## Flutter

| Version | Channel | Repository                                             |
|---------|---------|--------------------------------------------------------|
| 3.32.5  | stable  | [Flutter Repo](https://github.com/flutter/flutter.git) |

### Framework/FEATURES

| Architecture & Services       | 
|-------------------------------|
| CLEAN CODE ARCHITECTURE       |
| REST APIS                     |
| BLOC (CUBIT) STATE MANAGEMENT |

### Engine

| Revision       |
|----------------|
| cb4b5fff73     |

## Tools

| Dart Version | DevTools Version |
|--------------|------------------|
| 3.7.2        | 2.42.3           |
