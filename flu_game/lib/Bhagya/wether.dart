// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(wether());
}

class WeatherDetails {
  final String date;
  final String time;
  final String condition;
  final double temperature;

  WeatherDetails({
    required this.date,
    required this.time,
    required this.condition,
    required this.temperature,
  });
}

class wether extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherPage(),
    );
  }
}

class WeatherPage extends StatelessWidget {
  final List<WeatherDetails> weatherData = [
    WeatherDetails(
      date: 'Oct 30',
      time: '10:00 AM',
      condition: 'Sunny',
      temperature: 25.0,
    ),
    WeatherDetails(
      date: 'Oct 30',
      time: '02:00 PM',
      condition: 'Cloudy',
      temperature: 21.5,
    ),
    WeatherDetails(
      date: 'Oct 30',
      time: '06:00 PM',
      condition: 'Rainy',
      temperature: 18.2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Details'),
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(color: Colors.blue),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: weatherData.length,
                itemBuilder: (context, index) {
                  final data = weatherData[index];
                  return ListTile(
                    title: Text('Date: ${data.date} Time: ${data.time}'),
                    subtitle: Text(
                        'Condition: ${data.condition}, Temperature: ${data.temperature}°C'),
                  );
                },
              ),
            ),
            Center(child: SizedBox(height: 20)),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Location',
                hintText: 'oEnter your location',
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty || !value.contains('@')) {
                  return 'Invalid location. retry';
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
