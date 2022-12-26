import 'package:widget_testing/imports.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final nameCon = TextEditingController();
  final jobCon = TextEditingController();
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Testing'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            if (name.isNotEmpty) ...[
              Text(
                name,
                style: Const.kTextStyle,
                textAlign: TextAlign.center,
              ),
              Const.kHeight15,
            ],
            CustomTextFormField(
                keyVal: 'name',
                controller: nameCon,
                hintText: 'Enter Full Name'),
            Const.kHeight15,
            CustomTextFormField(
                keyVal: 'job', controller: jobCon, hintText: 'Enter Job'),
            Const.kHeight15,
            ElevatedButton(
              style: Const.customButtonStyle,
              onPressed: () {
                setState(() {
                  name =
                      'My name is ${nameCon.text}. My Job is a ${jobCon.text}';
                });
              },
              child: const Text('Display Name With Job Title'),
            ),
          ],
        ),
      ),
    );
  }
}
