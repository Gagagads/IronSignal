import 'package:flutter/material.dart';

void main() {
  runApp(const IronSignalApp());
}

class IronSignalApp extends StatelessWidget {
  const IronSignalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IronSignal',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const SignalHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SignalHomePage extends StatefulWidget {
  const SignalHomePage({Key? key}) : super(key: key);

  @override
  _SignalHomePageState createState() => _SignalHomePageState();
}

class _SignalHomePageState extends State<SignalHomePage> {
  final List<String> _signals = [];

  @override
  void initState() {
    super.initState();
    // Здесь можно инициализировать логику получения сигналов
    // Пока добавим тестовые сигналы
    _signals.addAll([
      'EUR/USD Buy at 1.1200',
      'USD/JPY Sell at 110.50',
      'GBP/USD Buy at 1.3100',
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IronSignal - Trading Signals'),
      ),
      body: ListView.builder(
        itemCount: _signals.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(
              _signals[index].contains('Buy') ? Icons.arrow_upward : Icons.arrow_downward,
              color: _signals[index].contains('Buy') ? Colors.green : Colors.red,
            ),
            title: Text(_signals[index]),
          );
        },
      ),
    );
  }
}