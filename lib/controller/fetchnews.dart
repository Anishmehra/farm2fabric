import 'dart:convert';
import 'dart:math';
import 'package:farm2fabric/model/newsArt.dart';
import 'package:http/http.dart';

//TODO 1 : Work on accuracy of  the news

class FetchNews{  
    static List sourcesId = [
    "abc-news",
 
    "bbc-news",
    "bbc-sport",

    "business-insider",

    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",
   
    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",

    "medical-news-today",
    
    "national-geographic",
 
    "news24",
    "new-scientist",
   
    "new-york-magazine",
    "next-big-future",
  
    "techcrunch",
    "techradar",
   
    "the-hindu",
   
    "the-wall-street-journal",
    
    "the-washington-times",
    "time",
    "usa-today",
    
  ];

  static Future<NewsArt> fetchNews() async {
    final _random = new Random();
    var sourceID = sourcesId[_random.nextInt(sourcesId.length)];
   
    Response response = await get(Uri.parse("https://newsapi.org/v2/everything?q=wool+fabric&apiKey=5511e1883a7b406c8fc24b29a71eaf38"));

    Map body_data = jsonDecode(response.body);
    List articles = body_data["articles"];
  
    final _Newrandom = new Random();
    var myArticle = articles[_random.nextInt(articles.length)];
 

    return NewsArt.fromAPItoApp(myArticle);
  }
}