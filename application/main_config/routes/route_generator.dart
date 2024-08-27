
// part of 'route_import.dart';

import 'package:azz_medical_web/application/core/routes/routes.dart';
import 'package:azz_medical_web/application/main_config/routes/route_path.dart';
import 'package:azz_medical_web/constant/const_imports/const_imports.dart';
import 'package:azz_medical_web/constant/style.dart';
import 'package:azz_medical_web/ui/home/home_screen.dart';
// import 'package:azz_medical_web/ui/location/location_screen.dart';
// import 'package:azz_medical_web/ui/patient/patient_screen.dart';

import 'package:azz_medical_web/ui/splash/splash_screen.dart';



class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case RoutePath.initialRoute:
        return PageRouter.fadeScale(() => SplashScreen());
      // case RoutePath.loginScreen:
      //   return PageRouter.fadeScale(
      //     () => LoginScreen(),
      //   );
      // case RoutePath.locationScreen:
      //   return PageRouter.fadeScale(
      //     () => LocationScreen(),
      //   );
      //   case RoutePath.newPatientScreen:
      //   return PageRouter.fadeScale(
      //     () => ChangeNotifierProvider(
      //       create: (context) {
      //         return NewPatientViewModel();
      //       },
      //       child: NewPatientScreen(),
      //     ),
      //   );
      // case RoutePath.patientScreen:
      //   return PageRouter.fadeScale(
      //     () => PatientScreen(),
      //   );

      // case RoutePath.printingScreen:
      //   return PageRouter.fadeScale(
      //     () => PrintingScreen(),
      //   );
      //
      // case RoutePath.patientPreviewScreen:
      //   return PageRouter.fadeScale(
      //     () => PatientPreviewScreen(),
      //   );
      //
      case RoutePath.homeScreen:
        return PageRouter.fadeScale(() => HomeScreen());

      // case RoutePath.createAppointmentScreen:
      //   return PageRouter.fadeScale(
      //     () => CreateAppointmentScreen(),
      //   );
      // case RoutePath.doctorDetailScreen:
      //   return PageRouter.fadeThrough(
      //     () => ListenableProvider<ProviderViewModel>(
      //       create: (context) {
      //         return ProviderViewModel();
      //       },
      //       child: DoctorDetailScreen(providerDetails: args as Providers),
      //     ),
      //   );
      //
      // case RoutePath.phoneVerifyScreen:
      //   return PageRouter.fadeThrough(
      //     () => ListenableProvider<ProviderViewModel>(
      //       create: (context) {
      //         return ProviderViewModel();
      //       },
      //       child: PhoneVerifyScreen(),
      //     ),
      //   );
      //
      // case RoutePath.patientInfoScreen:
      //   return PageRouter.fadeScale(() => PatientInfoScreen());
      //
      // case RoutePath.bookingScreen:
      //   return PageRouter.fadeScale(() => BookingScreen());
      // case RoutePath.notificationsPage:
      //   return PageRouter.fadeScale(
      //       () => NotificationsPage(documents: args as Documents));
      //
      // case RoutePath.workbookScreen:
      //   return PageRouter.fadeScale(
      //       () => ChangeNotifierProvider<PatientDocViewModel>(
      //           create: (context) {
      //             return PatientDocViewModel();
      //           },
      //           child:  ScanDocScreen()));
      // case RoutePath.patientRecordScreen:
      //   return PageRouter.fadeScale(() => PatientRecordScreen());
      // case RoutePath.resultPage:
      //   return PageRouter.fadeScale(() => ResultPage());


      default:
        return _errorRoute();
    }
  }

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
