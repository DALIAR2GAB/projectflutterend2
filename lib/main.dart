import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:revisionend/pages/newhome.dart';
import 'package:revisionend/pages/signuppage.dart';
import 'package:revisionend/provider/newsprovider.dart';
import 'package:revisionend/provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Regprovider(),),
        ChangeNotifierProvider(create: (context) => Newsprovider(),)

      ],
      child: MaterialApp(
        home: Signuppage(),
      ),
    );
  }
}
