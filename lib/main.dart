import 'package:bni_chapter/routes/app_pages.dart';
import 'package:bni_chapter/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final sceensize = MediaQuery.of(context).size;
    print(sceensize.width);
    print(sceensize.height);

    return ScreenUtilInit(
        designSize: const Size(360.0, 784.0),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            onGenerateRoute: (settings) =>
                RouteHandler(settings: settings).generateRoute(),
            initialRoute: AppRoutes.splashScreen,
            // home: const CreateUser(),
          );
        });
  }
}
