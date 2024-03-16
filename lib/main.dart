import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/all_liked_users_page/all_liked_users_page_bloc.dart';
import 'package:honeybee/application/all_messages_page/all_messages_bloc.dart';
import 'package:honeybee/application/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:honeybee/application/chat_page/chat_page_bloc.dart';
import 'package:honeybee/application/create_account_page/create_account_bloc.dart';
import 'package:honeybee/application/discover_page/discover_page_bloc.dart';
import 'package:honeybee/application/matches_page/matches_page_bloc.dart';
import 'package:honeybee/application/preview_account_page/preview_account_page_bloc.dart';
import 'package:honeybee/application/search_page/search_page_bloc.dart';
import 'package:honeybee/application/sign_in/otp_number_auth_page/otp_number_auth_page_bloc.dart';
import 'package:honeybee/application/sign_in/phone_number_auth_page/phone_number_auth_page_bloc.dart';
import 'package:honeybee/application/update_account_page/update_account_page_bloc.dart';
import 'package:honeybee/core/routes/navigation_functions.dart';
import 'package:honeybee/infrastructure/services/notification_services.dart';
import 'package:honeybee/infrastructure/services/socket_services.dart';
import 'package:honeybee/presentation/screens/splash_screen/splash_screen.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'application/basic_info_auth_page/basic_info_auth_bloc.dart';
import 'application/location_auth_page/location_auth_page_bloc.dart';

void main() async {
  Intl.defaultLocale = 'en_IN';
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.initializeNotification();
  await initializeDateFormatting('en_IN', null);
  //-------->>>-----SystemUIOverlayStyle used for changing the status bar color----->>>--------
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  SocketServices.socketSetup();
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
        BlocProvider(
          create: (context) => BottomNavigationBloc(),
        ),
        BlocProvider(
          create: (context) => DiscoverPageBloc(),
        ),
        BlocProvider(
          create: (context) => MatchesPageBloc(),
        ),
        BlocProvider(
          create: (context) => AllLikedUsersPageBloc(),
        ),
        BlocProvider(
          create: (context) => PreviewAccountPageBloc(),
        ),
        BlocProvider(
          create: (context) => SearchPageBloc(),
        ),
        BlocProvider(
          create: (context) => UpdateAccountPageBloc(),
        ),
        BlocProvider(
          create: (context) => ChatPageBloc(),
        ),
        BlocProvider(
          create: (context) => AllMessagesBloc(),
        ),
      ],
      child: MaterialApp(
        navigatorKey: CustomNavigator.navigatorKey,
        title: 'HoneyBee',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
