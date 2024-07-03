import 'package:flutter/material.dart';
import 'package:responsive_app_rev/HomeScreen.dart';
import 'package:responsive_app_rev/layout_builder.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Wrapping the app with a builder method makes breakpoints
      // accessible throughout the widget tree.
      builder: (context, child) => ResponsiveBreakpoints.builder(
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
        child: child!,
      ),

//       // Example: if the screen is bigger than the Mobile breakpoint, build full width AppBar icons and labels.
// if (ResponsiveBreakpoints.of(context).largerThan(MOBILE))
//     FullWidthAppBarItems()

      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => AppScreen(),
        );
      },
      debugShowCheckedModeBanner: false,
    );
  }

  // onGenerateRoute route switcher.
  // Navigate using the page name, `Navigator.pushNamed(context, ListPage.name)`.
}

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: ResponsiveRowColumn( 
  
  layout: ResponsiveBreakpoints.of(context).largerThan(MOBILE)? ResponsiveRowColumnType.COLUMN :ResponsiveRowColumnType.ROW , //ResponsiveRowColumnType.COLUMN,
  children: const [
ResponsiveRowColumnItem( rowFlex:1 ,  child: ResponsiveScreen()),
 

],),


    );
  }
}