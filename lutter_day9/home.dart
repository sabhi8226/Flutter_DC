main() {
  lw(name: "Jack", country: "IN");
}

int lw({String name, String country}) {
  print("HellO $name yOur lenghths is ${name.length} , from Country $country");
  //return (name.length);
}
