class VisitorForm {
  String name;
  String gender;
  String purpose;
  int mobile;

  VisitorForm(this.gender, this.mobile, this.name, this.purpose);

  sendsms() {
    print("Please SenD SMS ${this.mobile}");
  }

  getpurpose() {
    print("Purpose OF This User Is :- ${this.purpose}");
  }

  sayhello() {
    print("HellO");
  }
}

class JobForm extends VisitorForm {
  JobForm({this.techSkills, this.score1, gender, mobile, name, purpose})
      : super(gender, mobile, name, purpose);

  // annotations

  @override
  sayhello() {
    print("HellO...!!");
  }

  getscore() {
    print("This is My Score :- ${this.score1}");
  }

  String techSkills;
  String score1;
}

class CourseForm extends VisitorForm {
  CourseForm({this.cname, gender, mobile, name, purpose})
      : super(gender, mobile, name, purpose);

  String cname;
}
