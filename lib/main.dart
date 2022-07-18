import 'package:admin_dashboard/exports/exports_packages.dart';
import 'package:admin_dashboard/exports/exports_widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Flurorouter.configRoutes();

  await LocalStorage.configurePrefs();

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => AuthProvider(),
        ),
        // ChangeNotifierProvider(
        //   lazy: false,
        //   create: (_) => SideMenuProvider(),
        // ),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Dashboard',
      theme: ThemeData.light().copyWith(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(
            Colors.red.withOpacity(0.2),
          ),
        ),
      ),
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
      // navigatorKey: NavigationService.navigatorKey,
      // scaffoldMessengerKey: NotificationsService.messengerKey,
      builder: (_, child) {
        return AuthLayout(child: child!);
        // if (authProvider.authStatus == AuthStatus.checking) {
        //   return const SplashLayout();
        // }

        // if (authProvider.authStatus == AuthStatus.authenticated) {
        //   return DashboardLayout(child: child!);
        // } else {
        //   return AuthLayout(child: child!);
        // }
      },
    );
  }
}
