import 'package:eeptw_app/theme/eeptw_text_theme.dart';
import 'package:eeptw_app/utilities/init.dart';
import 'package:flutter/material.dart';

void main() {
  Init.before();

  runApp(const EEPTWAPP());
}

class EEPTWAPP extends StatefulWidget {
  const EEPTWAPP({Key? key}) : super(key: key);

  @override
  State<EEPTWAPP> createState() => _EEPTWAPPState();
}

class _EEPTWAPPState extends State<EEPTWAPP> {
  @override
  void initState() {
    super.initState();
    Init.after();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EEPTW | 輕菘教育平台",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.indigo,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(190, 46, 160, 253),
                  onPrimary: Colors.white)),
          useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 48,
        leading: Image.asset("assets/images/logo_no_outline.png"),
        titleSpacing: 0,
        title: const Text("輕菘教育平台"),
        actions: [
          ElevatedButton(
              onPressed: () {
                // TOOD: Login account.
                showDialog(
                    context: context,
                    builder: (context) =>
                        const AlertDialog(title: Text("登入帳號")));
              },
              child: const Text("登入帳號"))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("立即開始!")),
                const Text("我是",
                    style: TextStyle(fontSize: 50),
                    textAlign: EEPTWTextTheme.align),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildIdentityButton("學生", onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => const AlertDialog(
                                title: Text("TO DO"),
                              ));
                    }),
                    const SizedBox(width: 20),
                    _buildIdentityButton("老師"),
                    const SizedBox(width: 20),
                    _buildIdentityButton("家長"),
                  ],
                ),
                const SizedBox(height: 16),
                const Text("特色功能",
                    style: EEPTWTextTheme.title,
                    textAlign: EEPTWTextTheme.align),
                const Text(""),
                const Divider(),
                const ColoredBox(
                    color: Colors.black,
                    child: SizedBox(width: 50, height: 250)),
              ],
            ),
          ),
          const Divider(),
          const Text("頁腳 1"),
          const Text("頁腳 2"),
        ],
      ),
    );
  }

  SizedBox _buildIdentityButton(String text, {Function()? onPressed}) {
    return SizedBox(
      height: 55,
      child: ElevatedButton(
          child: Text(
            text,
            style: const TextStyle(fontSize: 35),
          ),
          onPressed: onPressed),
    );
  }
}
