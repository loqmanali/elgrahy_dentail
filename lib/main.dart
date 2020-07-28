import 'package:dental/provider/model_hud.dart';
import 'package:dental/screen/admin_screen/add_product.dart';
import 'package:dental/screen/admin_screen/admin_page.dart';
import 'package:dental/screen/user_screen/home_page.dart';
import 'package:dental/screen/login_screen.dart';
import 'package:dental/screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/admin_mode.dart';
import 'screen/user_screen/aboutus_page.dart';
import 'screen/user_screen/appointment_page.dart';
import 'screen/user_screen/availibility_page.dart';
import 'screen/user_screen/blog_page.dart';
import 'screen/user_screen/contactus_page.dart';
import 'screen/user_screen/gallery_page.dart';
import 'screen/user_screen/reachus_page.dart';
import 'screen/user_screen/services_page.dart';
import 'screen/user_screen/testimonials_page.dart';

void main() => runApp(ElgrahyDentail());

class ElgrahyDentail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ModelHud>(
          create: (context) => ModelHud(),
        ),
        ChangeNotifierProvider<AmdinMode>(
          create: (context) => AmdinMode(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SignupScreen.id,
        routes: {
          LoginScreen.id: (context) => LoginScreen(),
          SignupScreen.id: (context) => SignupScreen(),
          HomePage.id: (context) => HomePage(),
          AdminPage.id: (context) => AdminPage(),
          AddProduct.id: (context) => AddProduct(),
          AboutusPage.id: (context) => AboutusPage(),
          AppointmentPage.id: (context) => AppointmentPage(),
          AvailibilityPage.id: (context) => AvailibilityPage(),
          BlogPage.id: (context) => BlogPage(),
          ContactusPage.id: (context) => ContactusPage(),
          GalleryPage.id: (context) => GalleryPage(),
          ReachusPage.id: (context) => ReachusPage(),
          ServicesPage.id: (context) => ServicesPage(),
          TestimonialsPage.id: (context) => TestimonialsPage(),
        },
      ),
    );
  }
}
