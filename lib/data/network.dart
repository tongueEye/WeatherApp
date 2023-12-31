import 'package:http/http.dart' as http;
import 'dart:convert';

class Network{
  final String url;
  final String url2;
  Network(this.url,this.url2);

  Future<dynamic> getJsonData() async{
    http.Response response = await http.get( //http를 통해 json데이터를 받아옴
        Uri.parse(url)
    );
    if(response.statusCode==200){
      String jsonData=response.body;
      var parsingData=jsonDecode(jsonData);
      return parsingData;
    }
  }

  Future<dynamic> getAirData() async{
    http.Response response = await http.get( //http를 통해 json데이터를 받아옴
        Uri.parse(url2)
    );
    if(response.statusCode==200){
      String jsonData=response.body;
      var parsingData=jsonDecode(jsonData);
      return parsingData;
    }
  }
}