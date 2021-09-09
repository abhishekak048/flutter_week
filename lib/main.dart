import 'package:flutter/material.dart';
import 'package:flutter_week_view/flutter_week_view.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Demo(),
    );
  }
}

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      var addDt = DateTime.now();
      var anotherDt = DateTime.now().add(Duration(days: 0, hours: 4));
      print(addDt);
      print(anotherDt);
      print(addDt.isAfter(anotherDt));
    });
    print('Hello, World!');

    // print(addDt);
    // var subDt = DateTime.now().add(Duration(days: 0, hours: 0, seconds: 7));
    // print(subDt);
    // print(addDt.isAfter(subDt)); // true
    return SafeArea(
      child: Column(
        children: [
          Container(
            child: Text("hello"),
          ),
        ],
      ),
    );
  }
}

class Day_view extends StatefulWidget {
  const Day_view({Key? key}) : super(key: key);

  @override
  _Day_viewState createState() => _Day_viewState();
}

class _Day_viewState extends State<Day_view> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day);
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: 20,
            child: Text(
              "hello",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            height: 200,
            child: DayView(
              // initialTime: const HourMinute(hour: 7),
              date: now,
              events: [
                FlutterWeekViewEvent(
                  title: 'An event 1',
                  description: 'A description 1',
                  start: date.subtract(const Duration(hours: 1)),
                  end: date.add(const Duration(hours: 18, minutes: 30)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DemoDayView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day);
    return DayView(
      initialTime: const HourMinute(hour: 7),
      date: now,
      events: [
        FlutterWeekViewEvent(
          title: 'An event 1',
          description: 'A description 1',
          start: date.subtract(const Duration(hours: 1)),
          end: date.add(const Duration(hours: 18, minutes: 30)),
        ),
        FlutterWeekViewEvent(
          title: 'An event 2',
          description: 'A description 2',
          start: date.add(const Duration(hours: 19)),
          end: date.add(const Duration(hours: 22)),
        ),
        FlutterWeekViewEvent(
          title: 'An event 3',
          description: 'A description 3',
          start: date.add(const Duration(hours: 23, minutes: 30)),
          end: date.add(const Duration(hours: 25, minutes: 30)),
        ),
        FlutterWeekViewEvent(
          title: 'An event 4',
          description: 'A description 4',
          start: date.add(const Duration(hours: 20)),
          end: date.add(const Duration(hours: 21)),
        ),
        FlutterWeekViewEvent(
          title: 'An event 5',
          description: 'A description 5',
          start: date.add(const Duration(hours: 20)),
          end: date.add(const Duration(hours: 21)),
        ),
      ],
      style: DayViewStyle.fromDate(
        date: date,
        currentTimeCircleColor: Colors.pink,
      ),
    );
  }
}
