main() {
  Function myfunction = (text) => text.length;

  mylen(
    word: "Abhi",
    myfunc: myfunction,
  );
}

mylen({Function myfunc, String word}) {
  print(word);
  print(myfunc(word));
}
