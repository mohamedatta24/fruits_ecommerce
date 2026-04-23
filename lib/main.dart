import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_ecommerce/core/services/custom_bloc_observer.dart';
import 'package:fruits_ecommerce/core/services/dependency_injection.dart';
import 'package:fruits_ecommerce/core/services/shared_prefs.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/login_view.dart';
import 'package:fruits_ecommerce/features/home/presentation/views/home_view.dart';
import 'package:fruits_ecommerce/features/splash/presentation/views/splash_view.dart';
import 'package:fruits_ecommerce/firebase_options.dart';
import 'package:fruits_ecommerce/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await SharedPrefs.init();
  setupGetIt();
  Bloc.observer = CustomBlocObserver();
  runApp(const FruitsEcommerce());
}

class FruitsEcommerce extends StatelessWidget {
  const FruitsEcommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xff1B5E37),
        ),
        fontFamily: "Cairo",
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale("ar"),
      home: const LoginView(),
    );
  }
}
