import 'myvisitor.dart';

void main() {
  JobForm visitor1 = new JobForm(
      gender: 'M', name: 'Abhi', techSkills: 'flutter', mobile: 1234);

  var visitor2 = new JobForm(
    name: 'Tony',
    score1: "4321",
  );

  var visitor3 = new CourseForm(cname: "Python", name: "Eric");

  visitor1.sendsms();
  visitor2.getpurpose();
  visitor2.getscore();
  visitor1.sayhello();
  visitor3.cname;

  print(visitor1.gender);
  print(visitor1.name);
  print(visitor1.techSkills);
  print(visitor2.name);
  print(visitor3.cname);
}
