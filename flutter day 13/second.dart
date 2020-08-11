import 'package:http/http.dart' as http;

void main() {
  alltask();
}

alltask() {
  task1();
  task2();
  task3();
}

task1() {
  print("task1 my first tasks done for app bar ..");
}

task2() async {
  var url = "http://192.168.43.210/cgi-bin/date.py";
  var response = await http.get(url);
  print(response.body);
}

task3() {
  print("task3 i create button for login my username");
}
