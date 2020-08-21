import 'mycentral.dart';

void main() {
  VisitorForm visitor3 = VisitorForm(name: "Abhi", gender: "Male");

  VisitorForm visitor2 =
      VisitorForm(name: "Paul", mobile: "22334455", gender: "Male");

  print(visitor2.name);
  print(visitor3.name);
}
