import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/create_account_page/create_account_bloc.dart';
import 'package:honeybee/presentation/screens/bottom_navigation/bottom_navbar.dart';
import 'application/basic_info_auth_page/basic_info_auth_bloc.dart';
import 'application/location_auth_page/location_auth_page_bloc.dart';
import 'application/otp_number_auth_page/otp_number_auth_page_bloc.dart';
import 'application/phone_number_auth_page/phone_number_auth_page_bloc.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PhoneNumberAuthPageBloc(),
        ),
        BlocProvider(
          create: (context) => OtpNumberAuthPageBloc(),
        ),
        BlocProvider(
          create: (context) => BasicInfoAuthBloc(),
        ),
        BlocProvider(
          create: (context) => LocationAuthPageBloc(),
        ),
        BlocProvider(
          create: (context) => CreateAccountBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home: const SplashScreen(),
        // home: BasicInfoMainPage(formattedPhoneNumber: '+91 86065 09838'),
        home: const BottomNavbar(
            token:
                'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1MGE4Yzk5MWY5ZjVhMzZlMTFjZTdmYyIsImlhdCI6MTY5NTE5MDE3Nn0.IPSh5k9iMnKUEztDnLsjkkIjNVeyCb0yc3tqw4_5K48'),
      ),
    );
  }
}
