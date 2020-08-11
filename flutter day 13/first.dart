
void main() {
  alltask();
}

alltask() async {
  task1();
  var d2 = await task2(); 
  task3(d2); 
  // task4();
}

task1() {
  print("task1 my first tasks done for app bar ..");
}

Future task2() async {
  var d = Duration(seconds: 15);

  var result;

  // sleep(d);
  await Future.delayed(d, () {
    result = "url username";
    print("task 2 url to download image");
  });

  return result;
}

task3(d2) {
  print("task3 i create button for login my username is ${d2}");
}

task4() {
  print('task4');
}
