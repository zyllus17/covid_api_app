import 'package:covid_api_app/app/repositories/data_repository.dart';
import 'package:covid_api_app/app/services/api_service.dart';
import 'package:covid_api_app/app/ui/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/services/api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<DataRepository>(
      create: (context) => DataRepository(
        apiService: APIService(API.sandbox()),
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Coronavirus Tracker',
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Color(0xFF101010),
            cardColor: Color(0xFF222222)),
        home: Dashboard(),
      ),
    );
  }
}
