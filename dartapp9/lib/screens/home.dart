import 'package:flutter/material.dart';

import 'automatically_imply_lead.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Development',
      debugShowCheckedModeBanner: false,
      home: const AutomaticImplyLead(),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

