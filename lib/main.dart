import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'Bloc/User/user_cubit.dart';

import 'Constants/Colors/app_color.dart';
import 'Route/app_route.dart';

void main() async {
  HttpOverrides.global =  MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // SystemChrome.setEnabledSystemUIOverlays([]);
  Directory directory = await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  await Hive.openBox('users');
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('bn', 'BD'), Locale('en', 'US')],
        path:
        'assets/translations', // <-- change the path of the translation files
        fallbackLocale: const Locale('bn', 'BD'),
        child: MyApp(
          router: AppRouter(),
        )),
  );
}

class MyApp extends StatelessWidget {
  final AppRouter router;
  const MyApp({Key? key, required this.router}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserCubit>(
          create: (context) => UserCubit(),
        ),
        BlocProvider<UserCubit>(
          create: (context) => UserCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: 'FieldX',
        theme: ThemeData(
          // primarySwatch:Colors.blue,
            primaryColor: kPrimaryColorx),
        onGenerateRoute: router.generateRoute,
      ),
    );
  }
}
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context) {

    return super.createHttpClient(context) ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}