import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:webtest/modules/aboutUs/about_us_page.dart';
import 'package:webtest/modules/contactUs/contact_us_page.dart';
import 'package:webtest/modules/home/home_page.dart';
import 'package:webtest/modules/newsAndEvents/news_and_events_page.dart';

import '../Cubit/site_cubit.dart';

ThemeMode themeMode = ThemeMode.light ;
class Buttons {
  String? text;
  String? beamer;

  Buttons({
    required this.text,
    required this.beamer
  });
}
List<Buttons> buttons = [
  Buttons(
    text: "HOME",
    beamer: '/Home'
  ),
  Buttons(
    text: "ABOUT US",
    beamer: '/AboutUs'
  ),
  Buttons(
    text: "PRODUCTS",
    beamer: '/Products'
  ),
  Buttons(
    text: "CONTACT US",
    beamer: '/ContactUs'
  ),
];
List<bool> abbBarButtons = [];

class Products {
  String? productName;
  Products({required this.productName,});
}
List<Products> products = [
  Products(
      productName: "PVC Resin"
  ),
  Products(
      productName: "shoes rubber"
  ),
  Products(
      productName: "Plastic Polymers"
  ),
  Products(
      productName: "Plasticizers"
  ),
  Products(
      productName: "Wires"
  ),
  Products(
      productName: "Others"
  ),
];
List<bool> productsButtons = [];

double productsMenuHeight = (productsNumber *30)+5 ; // 8 for 6 separators ;
int productsNumber = products.length ;
double appbarButtonsMenuHeight = (appbarButtonsNumber * 30)+4.5 ; // 8 for 6 separators ;
int appbarButtonsNumber = buttons.length ;
double appbarButtonsAnimation = 0;

bool productsPressed = false ;
bool menuPressed = false ;
double productsAnimation = 0;
double productsIconAnimation = 0;


int phonePage = 0 ; // 0 for desktop , 1 for Phone
bool narrowEnoughToChange = false ;

Brightness brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
final routerDelegate = BeamerDelegate(
  initialPath: '/Home',
    locationBuilder: RoutesLocationBuilder(
        routes: {
          '/#': (context, state, data) => const SizedBox(),
          '/Home' : (context, state, data) {
            return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth.toInt() <= 696)
                {
                  SiteCubit.get(context).homeNarrowEnoughToTrue(context);
                  print(narrowEnoughToChange);
                }
                else
                {
                  SiteCubit.get(context).homeNarrowEnoughToFalse(context);
                  print(narrowEnoughToChange);
                }
                if (constraints.maxWidth.toInt() >= 820)
                {
                  phonePage = 0 ;
                }
                else
                {
                  phonePage = 1 ;
                }
                return const HomePage();
              },
            );
          },
          '/AboutUs' : (context, state, data) {
            return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth.toInt() <= 696)
                {
                  SiteCubit.get(context).homeNarrowEnoughToTrue(context);
                  print(narrowEnoughToChange);
                }
                else
                {
                  SiteCubit.get(context).homeNarrowEnoughToFalse(context);
                  print(narrowEnoughToChange);
                }
                if (constraints.maxWidth.toInt() >= 820)
                {
                  phonePage = 0 ;
                }
                else
                {
                  phonePage = 1 ;
                }
                return const AboutUsPage();
              },
            );
          },
          '/Products' : (context, state, data) {
            return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth.toInt() <= 696)
                {
                  SiteCubit.get(context).homeNarrowEnoughToTrue(context);
                  print(narrowEnoughToChange);
                }
                else
                {
                  SiteCubit.get(context).homeNarrowEnoughToFalse(context);
                  print(narrowEnoughToChange);
                }
                if (constraints.maxWidth.toInt() >= 820)
                {
                  phonePage = 0 ;
                }
                else
                {
                  phonePage = 1 ;
                }
                return const NewsAndEventsPage();
              },
            );
          },
          '/ContactUs' : (context, state, data) {
            return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth.toInt() <= 696)
                {
                  SiteCubit.get(context).homeNarrowEnoughToTrue(context);
                  print(narrowEnoughToChange);
                }
                else
                {
                  SiteCubit.get(context).homeNarrowEnoughToFalse(context);
                  print(narrowEnoughToChange);
                }
                if (constraints.maxWidth.toInt() >= 820)
                {
                  phonePage = 0 ;
                }
                else
                {
                  phonePage = 1 ;
                }
                return const ContactUs();
              },
            );
          },
        }
    ),
);

bool ourProducts = false ;
List<bool> tailProducts = [] ;


