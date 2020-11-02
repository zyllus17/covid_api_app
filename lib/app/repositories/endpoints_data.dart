
import 'package:covid_api_app/app/services/api.dart';
import 'package:flutter/foundation.dart';

class EndpointsData{
  final Map<Endpoint, int> values;
  EndpointsData({@required this.values});

  int get cases => values[Endpoint.cases];
  int get casesSuspected => values[Endpoint.casesSuspected];
  int get casesConfirmed => values[Endpoint.casesConfirmed];
  int get deaths => values[Endpoint.deaths];
  int get recovered => values[Endpoint.recovered];

  @override
  String toString() =>
    'cases: $cases, suspected: $casesSuspected, confirmed: $casesConfirmed, deaths: $deaths, recovered: $recovered';
  }