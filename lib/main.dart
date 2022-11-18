import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart_app/provider/cart_provider.dart';
import 'package:shopping_cart_app/screens/product_list.dart';
import 'package:shopping_cart_app/screens/welcome_screen.dart';
import 'package:shopping_cart_app/screens/signup_screen.dart';
import 'package:shopping_cart_app/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: Builder(builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
            initialRoute: 'welcome_screen',
            routes: {
              'welcome_screen': (context) => WelcomeScreen(),
              'registration_screen': (context) => RegistrationScreen(),
              'login_screen': (context) => LoginScreen(),
              /*'home_screen': (context) => HomeScreen()*/
            });
      }),
    );
  }
}
