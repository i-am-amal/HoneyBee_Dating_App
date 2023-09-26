import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:honeybee/core/config.dart';
import 'package:honeybee/presentation/screens/create_account/basic_info/basic_info_last_page.dart';
import 'package:honeybee/presentation/screens/create_account/basic_info/basic_info_main_page.dart';
import 'package:honeybee/presentation/screens/profile/menu_page.dart';
import 'package:honeybee/presentation/screens/sign_in/phone_authentication_page/phone_authentication_page.dart';
import 'package:honeybee/presentation/screens/splash_screen/splash_screen.dart';
import 'package:honeybee/presentation/widgets/onboarding_widgets/image_widget.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Widget Testing"),
          backgroundColor: const Color.fromARGB(255, 136, 95, 207),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.check),
            )
          ]),
      body: Center(
          //space for testing new widgets

          child: ElevatedButton(
        onPressed: () {},
        child: Text('testing'),
      )

          ////
          ),
    );
  }
}
