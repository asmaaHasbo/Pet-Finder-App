import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PetFinderApp extends StatelessWidget {
  const PetFinderApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final AppRouter appRouter = AppRouter();

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Pet Finder App',
        theme: ThemeData(
          textTheme: GoogleFonts.cairoTextTheme(),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        // initialRoute: Routes.mainScreen,
        // onGenerateRoute: appRouter.generateRoute,
        // home:,
      ),
    );
  }
}
