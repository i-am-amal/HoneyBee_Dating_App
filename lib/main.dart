import 'package:flutter/material.dart';
import 'package:honeybee/core/config.dart';
import 'package:honeybee/presentation/screens/sign_in/phone_authentication_page/otp_authentication_page.dart';
import 'package:honeybee/presentation/screens/sign_in/phone_authentication_page/phone_authentication_page.dart';
import 'package:honeybee/presentation/widgets/onboarding_widgets/image_widget.dart';

void main() {
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
      home: const OtpAuthenticationPage(),
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
          title: Text("testing"),
          backgroundColor: Colors.deepPurple,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.check),
            )
          ]),
      body: const Center(
        child: ImageWidget(imagepath: Config.dummyImageUrl),
      ),
    );
  }
}
