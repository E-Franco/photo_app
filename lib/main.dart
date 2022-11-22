import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ui/pages/pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  runApp(PhotoApp());
}

class PhotoApp extends StatelessWidget {
  const PhotoApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData.light().copyWith(textTheme: GoogleFonts.openSansTextTheme()),
      debugShowCheckedModeBanner: false,
    );
  }
}
