import 'package:covid_api_app/app/services/api.dart';
import 'package:flutter/material.dart';

class EndpointCardData {
  final String title;
  final String assetName;
  final Color color;

  EndpointCardData(this.title, this.assetName, this.color);
}

class EndpointCard extends StatelessWidget {
  final Endpoint endpoint;
  final int value;

  const EndpointCard({Key key, this.endpoint, this.value}) : super(key: key);

  static Map<Endpoint, EndpointCardData> _cardsData = {
    Endpoint.cases:
        EndpointCardData('Cases', 'assets/count.png', Color(0xFFFFF492)),
    Endpoint.casesSuspected: EndpointCardData(
        'Suspected cases', 'assets/suspect.png', Color(0xFFEEDA28)),
    Endpoint.casesConfirmed: EndpointCardData(
        'Confirmed cases', 'assets/fever.png', Color(0xFFE99600)),
    Endpoint.deaths:
        EndpointCardData('Cases', 'assets/death.png', Color(0xFFE40000)),
    Endpoint.recovered:
        EndpointCardData('Cases', 'assets/patient.png', Color(0xFF70A901)),
  };
  @override
  Widget build(BuildContext context) {
    final cardData = _cardsData[endpoint];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Card(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              cardData.title,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: cardData.color),
            ),
            SizedBox(height: 4.0),
            SizedBox(
              height: 52.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(cardData.assetName, color: cardData.color),
                  Text(
                    value != null ? value.toString() : '',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                          color: cardData.color,
                          fontWeight: FontWeight.w500,
                        ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
