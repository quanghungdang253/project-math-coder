import 'package:go_router/go_router.dart';
import '../screens/Home/home-screen.dart';
import '../layout/main-layout/main-layout.dart';
import '../screens/get-starts/get-starts.dart';
import '../screens/section/main-section.dart';
import '../screens/about/about.dart';
import '../screens/math-form/math-form.dart';
final GoRouter go_router = GoRouter(
 initialLocation: '/',
  routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => GetStart(),
        ),
        ShellRoute(
          builder: (context, state, child) {
                return mainLayout(child: child);
          },
          routes: [
              GoRoute(
                  path: '/Home',
                  builder: (context, state) => Home(),
               ),
              GoRoute(
                  path: '/About',
                  builder: (context, state) => About(),
               ),
          ]
       ),
       GoRoute(
          path: '/caculate',
          builder: (context, state) => mainSection(),
      ),
      GoRoute(
        path: '/mathform/:class',
        builder: (context, state){
            final String nameClass = state.pathParameters['class']!;
            return mathForm(nameClass : nameClass );
        } 
      )
       
       
  ]
);