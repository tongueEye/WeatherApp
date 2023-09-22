import 'package:geolocator/geolocator.dart';

class MyLocation{
  double? latitude2;
  double? longitude2;

  Future<void> getMyCurrentLocation() async{
    try {
      //GPS를 통해 async방식으로 현재 나의 위치정보를 얻어올 수 있고 이 값은 position 변수에 담김
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      latitude2=position.latitude;
      longitude2=position.longitude;
      print(latitude2);
      print(longitude2);
    }catch(e){
      print('인터넷 연결에 문제가 발생했습니다.');
    }
  }
}