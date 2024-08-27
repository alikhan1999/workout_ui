import 'package:azz_medical_web/constant/const_imports/const_imports.dart';


final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  GoRouter router = GoRouter(
      navigatorKey: navigatorKey,
      routes: [
        GoRoute(
            name: RoutePath.initialRoute,
            path: RoutePath.initialRoute,
            pageBuilder: (context, state) {
              return MaterialPage(child: SplashScreen());
            }),
        GoRoute(
            name: RoutePath.homeScreen,
            path: "/${RoutePath.homeScreen}",
            pageBuilder: (context, state) {
              return MaterialPage(child: HomeScreen());
            }),
        GoRoute(
            name: RoutePath.createAppointmentScreen,
            path: "/${RoutePath.createAppointmentScreen}",
            pageBuilder: (context, state) {
              return CustomTransitionPage<void>(
                key: state.pageKey,
                child: WorkoutDetailScreen(),
                transitionDuration: const Duration(milliseconds: 150),
                transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) {
                  // Change the opacity of the screen using a Curve based on the the animation's
                  // value
                  return FadeTransition(
                    opacity:
                        CurveTween(curve: Curves.easeInOut).animate(animation),
                    child: child,
                  );
                },
              );
            }),
        GoRoute(
            name: RoutePath.newPatientScreen,
            path: "/${RoutePath.newPatientScreen}",
            pageBuilder: (context, state) {
              return CustomTransitionPage<void>(
                key: state.pageKey,
                child: ExerciseScreen(),
                transitionDuration: const Duration(milliseconds: 500),
                transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) {
                  // Change the opacity of the screen using a Curve based on the the animation's
                  // value
                  return FadeTransition(
                    opacity:
                        CurveTween(curve: Curves.easeInOut).animate(animation),
                    child: child,
                  );
                },
              );
            }),
      ],
      errorPageBuilder: (context, state) {
        return MaterialPage(
            child: Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: Center(
            child: Container(
              color: Style.scaffoldBackground,
              child: const Text('Page Not Found'),
            ),
          ),
        ));
      });

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: Center(
          child: Container(
            color: Style.scaffoldBackground,
            child: const Text('Page Not Found'),
          ),
        ),
      );
    });
  }
}
