import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model.dart';
import 'shape.dart';

void main() => runApp(Start());

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => MyNum()),
        ),
      ],
      child: MaterialApp(
        home: MyApp(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomPaint(
                    size: Size(
                        20,
                        (20 * 1)
                            .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: RPSCustomPainter(),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'SimpleProvider',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 95, 0, 150).withOpacity(1.0),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CustomPaint(
                    size: Size(
                        20,
                        (20 * 1)
                            .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: RPSCustomPainter(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                  width: 14.0,
                ),
                shape: BoxShape.circle,
                color: Colors.blueAccent,
              ),
              width: 160,
              height: 200,
              child: FutureBuilder(
                future: context.read<MyNum>().getSP(),
                builder: ((context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Text(
                      '${context.watch<MyNum>().num}',
                      style: const TextStyle(fontSize: 80, color: Colors.white),
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                }),
              ),
            ),
            Divider(
              color: Colors.black26,
              indent: MediaQuery.of(context).size.width / 5,
              endIndent: MediaQuery.of(context).size.width / 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  icon: const Icon(Icons.arrow_circle_up_outlined),
                  onPressed: () {
                    context.read<MyNum>().changenumAdd();
                  },
                  label: const Text('Plus 1'),
                ),
                const SizedBox(
                  width: 20,
                  height: 20,
                  child: VerticalDivider(
                    color: Colors.black26,
                    thickness: 1,
                  ),
                ),
                TextButton.icon(
                  icon: const Icon(Icons.arrow_circle_down_outlined),
                  onPressed: () {
                    context.read<MyNum>().changenumSub();
                  },
                  label: const Text('Minus 1'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
