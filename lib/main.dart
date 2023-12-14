import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/presentation/screens/create_account/basic_info/basic_info_last_page.dart';
import 'application/basic_info_auth_page/basic_info_auth_bloc.dart';
import 'application/location_auth_page/location_auth_page_bloc.dart';
import 'application/otp_number_auth_page/otp_number_auth_page_bloc.dart';
import 'application/phone_number_auth_page/phone_number_auth_page_bloc.dart';
import 'presentation/screens/splash_screen/splash_screen.dart';

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
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // home:const  SplashScreen(),
        home: BasicInfoLastPage(
            fullName: 'name',
            email: 'mail',
            location: 'location',
            phoneNumber: 'number',
            birthday: 'date',
            profileImage: File('pro pic'),
            coverImage: File('cover pic')),
      ),
    );
  }
}

///////////////////////////testing widget/////////////////////////////////////

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           title: const Text("Widget Testing"),
//           backgroundColor: const Color.fromARGB(255, 136, 95, 207),
//           actions: [
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.check),
//             )
//           ]),
//       body: Center(
//           //space for testing new widgets

//           child: ElevatedButton(
//         onPressed: () {},
//         child: const Text('testing'),
//       )

//           ////
//           ),
//     );
//   }
// }

////////////////////////////////////////////////////////////////////////////////