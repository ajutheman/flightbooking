import 'package:dio/dio.dart';
import 'package:flightbooking/models/news_model';
import 'package:flutter/material.dart';

class Ts extends StatefulWidget {
  const Ts({Key? key}) : super(key: key);

  @override
  _TsState createState() => _TsState();
}

class _TsState extends State<Ts> {
  bool isLoading = false;
  List<dynamic> articles = [];
  NewsModel newsModel = NewsModel();

  Future<void> getNews() async {
    setState(() {
      isLoading = true;
    });

    final dio = Dio();
    final response = await dio.get(
        "https://gnews.io/api/v4/top-headlines?category=general&lang=en&country=us&max=10&apikey=4d7773465af7c040d029aa6e0f93e675");

    if (response.statusCode == 200) {
      setState(() {
        newsModel = NewsModel.fromJson(response.data);
        articles = response.data["articles"];
        isLoading = false;
      });
    } else {
      setState(() {
        isLoading = false;
      });
      print("Failed to fetch articles");
    }
  }

  @override
  void initState() {
    super.initState();
    getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App"),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  final article = articles[index];
                  return Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Image.network(
                          newsModel.articles![index]
                              .image!, // Use the image URL from the article
                          height: 120, // Set your preferred height
                        ),
                        SizedBox(height: 10),
                        Text(
                          newsModel.articles![index]
                              .title!, // Use the title from the article
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: newsModel.articles?.length,
              ),
            ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Ts(),
  ));
}
