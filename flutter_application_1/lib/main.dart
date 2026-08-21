import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/splash_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized;
  await Supabase.initialize(
    url: "https://zwhsuthsypqoqffezmbn.supabase.co",
    publishableKey:"sb_publishable_Uv79i1ae96amwGbRSeDvrQ_qXdpbf8V" ,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashPage() ,
    );
  }
}
