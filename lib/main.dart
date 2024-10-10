import 'package:beamer/beamer.dart';
import 'package:webtest/Cubit/site_cubit.dart';
import 'package:webtest/modules/contactUs/contact_us_page.dart';
import 'package:webtest/modules/home/home_page.dart';
import 'package:webtest/shared/constants.dart';
import 'package:webtest/shared/local/dioHelper.dart';
import 'package:webtest/shared/remote/cachHelper.dart';
import 'package:webtest/shared/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'modules/aboutUs/about_us_page.dart';
import 'blocObserver.dart';
import 'modules/newsAndEvents/news_and_events_page.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  DioHelper.init();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> SiteCubit()..start(),
      child: MaterialApp.router(
        title: 'Site',
        darkTheme: ThemeData.dark(),
        themeMode: themeMode,
        theme: lightTheme,
        routeInformationParser: BeamerParser(),
        routerDelegate: routerDelegate,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
