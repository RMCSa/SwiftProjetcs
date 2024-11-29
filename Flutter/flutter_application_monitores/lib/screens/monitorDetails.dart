import 'package:flutter/material.dart';
import '../services/apiService.dart';

class MonitorDetailsScreen extends StatelessWidget {
  final String monitorId;
  const MonitorDetailsScreen({Key? key, required this.monitorId})
      : super(key: key);

  final Map<String, String> dayTranslations = const {
    'Monday': 'Segunda-feira',
    'Tuesday': 'Terça-feira',
    'Wednesday': 'Quarta-feira',
    'Thursday': 'Quinta-feira',
    'Friday': 'Sexta-feira',
    'Saturday': 'Sábado',
    'Sunday': 'Domingo',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Horários de Monitoria",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: FutureBuilder(
        future: ApiService.getMonitorDetails(monitorId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData) {
            return Center(child: Text("Erro ao carregar dados"));
          }

          var monitor = snapshot.data;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: 20.0),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.all(8.0),
                    children: monitor?['schedule'].keys.map<Widget>((day) {
                      String translatedDay =
                          dayTranslations[
                              day[0].toUpperCase() + day.substring(1)] ??
                          day;

                      return Card(
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.green.shade50, 
                        child: ListTile(
                          contentPadding: EdgeInsets.all(10.0),
                          title: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 8.0),
                            decoration: BoxDecoration(
                              color: Colors.green, 
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Text(
                              translatedDay,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                monitor['schedule'][day].map<Widget>((hour) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 4.0, left: 10.0),
                                child: Text(
                                  hour,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors
                                        .grey[700], 
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
