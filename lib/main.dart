import 'package:flutter/material.dart';

void main() {
  runApp(EmojiGenerator());
}

class EmojiGenerator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emoji Generator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _EmojiGeneratorHomePageState createState() => _EmojiGeneratorHomePageState();
}

class _EmojiGeneratorHomePageState extends State<HomePage> {
  List<String> emojis = [
    '🙏',
    '😃',
    '😁',
    '😎',
    '😆',
    '😅',
    '🤣',
    '😂',
    '🙂',
    '🙃'
  ];
  String currentEmoji = '';
  void generateEmoji() {
    setState(() {
      currentEmoji = (emojis..shuffle()).first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text('Emoji Generator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Emoji Generated: ',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 5),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                currentEmoji,
                style: const TextStyle(fontSize: 50),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: MaterialButton(
                onPressed: generateEmoji,
                child: const Text('Generate Emoji'),
                color: Colors.lightGreenAccent,
                splashColor: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
