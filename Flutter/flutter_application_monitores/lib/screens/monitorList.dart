import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'monitorDetails.dart';
import '../services/apiService.dart';

class MonitorListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: ApiService.getMonitors(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data?.isEmpty == true) {
            return Center(child: Text("Erro ao carregar dados"));
          }

          var monitors = snapshot.data;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius:
                        BorderRadius.circular(15.0), // Borda arredondada
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 5.0,
                        offset: Offset(0, 2), // Sombra sutil
                      ),
                    ],
                  ),
                  child: Text(
                    "Monitores do DPD",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, 
                    ),
                  ),
                ),
                SizedBox(
                    height: 20.0),
                CarouselSlider.builder(
                  itemCount: monitors?.length ?? 0,
                  itemBuilder: (context, index, realIndex) {
                    var monitor = monitors?[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                MonitorDetailsScreen(monitorId: monitor['id']),
                          ),
                        );
                      },
                      child: SizedBox(
                        width: 300.0, 
                        height: 500.0, 
                        child: Card(
                          color: Colors.green.shade100, // Cor de fundo do card
                          margin: EdgeInsets.symmetric(vertical: 15.0),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 100.0, // Largura fixa do avatar
                                  height: 100.0, // Altura fixa do avatar
                                  child: CircleAvatar(
                                    backgroundColor: Colors.green,
                                    backgroundImage: NetworkImage(
                                        monitor['avatar']),
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                SizedBox(
                                  width: 200.0, 
                                  child: Text(
                                    monitor['name'],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: 500.0, 
                    enlargeCenterPage: false,
                    autoPlay: true, 
                    enableInfiniteScroll: true,
                    viewportFraction:
                        0.3, 
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
