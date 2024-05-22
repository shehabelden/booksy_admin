import 'package:booksy_admin/presentation/auth/cubit/state.dart';
import 'package:booksy_admin/presentation/auth/login_screen.dart';
import 'package:booksy_admin/presentation/home/cubit/cubit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'firebase_options.dart';
import 'presentation/auth/cubit/cubit.dart';
import 'presentation/auth/login_check.dart';
import 'presentation/auth/sign_up.dart';
import 'utils/cash_helper/cash_helper.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//360
//800
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await CacheHelper.init();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthCubit()),
        BlocProvider(create: (context) => MainCubit()),
      ],
      child: BlocBuilder<AuthCubit,AuthMainState>(
          builder: (context,state) {
            if(CacheHelper.get(key: "lang") == null){
              CacheHelper.put(key: "lang", value: "en");}
            return MaterialApp(
              locale: Locale(CacheHelper.get(key: "lang")) ,
              supportedLocales: const [
                Locale('ar'),
                Locale('en'),
                Locale('fr'),
              ],
              localizationsDelegates:const[
                // AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              title: 'Flutter Demo',
              theme: ThemeData(
                useMaterial3: true,
              ),
              home:const LoginScreen(),
            );
          }
      ),
    );
  }
}