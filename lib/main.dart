import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:chamting_app/ui/pages/login/login.dart';
import 'package:fluent_ui/fluent_ui.dart';

import 'ui/pages/home/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  doWhenWindowReady(() {
    const initialSize = Size(1100, 730);
    const minSize = Size(366, 243);
    appWindow.minSize = minSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      title: 'Chamting',
      theme: ThemeData(
        activeColor: Colors.teal,
        // accentColor: Colors.teal,
      ),
      initialRoute: LoginPage.routeName, //home page
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        LoginPage.routeName: (context) => const LoginPage(),
      },
    );
  }
}
