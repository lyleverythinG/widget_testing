import 'imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget Testing',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.black87),
      ),
      home: const MyHomePage(),
    );
  }
}
