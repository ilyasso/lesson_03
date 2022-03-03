import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I\'m Rich',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ImaRich(title: 'I\'m Rich'),
    );
  }
}

class ImaRich extends StatefulWidget {
  final String title;
  const ImaRich({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<ImaRich> createState() => _ImaRichState();
}

class _ImaRichState extends State<ImaRich> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEC107),
      appBar: AppBar(
        backgroundColor: const Color(0xFF9c28b1),
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: GoogleFonts.pacifico(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: 50,
              color: const Color(0xFFF84038),
              fontWeight: FontWeight.w400,
            ),
          ),
          Image.asset('images/diamond.png'),
        ],
      )),
    );
  }
}
