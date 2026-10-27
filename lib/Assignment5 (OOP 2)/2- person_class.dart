class Person {
  String name;
  String address;

  Person({required this.name, required this.address});

  @override
  String toString() {
    return '$name($address)';
  }
}

class Student extends Person {
  Student({required super.name, required super.address});

  int numCourses = 0;
  List<String> courses = [];
  List<int> grades = [];

  @override
  String toString() {
    return 'Student: ${super.toString()}';
  }

  void addCourseGrade(String course, int grade) {
    courses.add(course);
    grades.add(grade);
    numCourses++;
  }

  void printGrades() {
    print("Grades for $name are: ");
    for (int i = 0; i < grades.length; i++) {
      print("${courses[i]} = ${grades[i]} ");
    }
  }

  double getAverageGrades() {
    if (grades.isEmpty) return 0.0;
    int sum = 0;
    for (int i = 0; i < grades.length; i++) {
      sum += grades[i];
    }
    return sum / grades.length;
  }
}

class Teacher extends Person {
  Teacher({required super.name, required super.address});

  int numCourses = 0;
  List<String> courses = [];

  @override
  String toString() {
    return 'Teacher: ${super.toString()}';
  }

  bool addCourse(String course) {
    if (courses.contains(course)) return false;
    courses.add(course);
    numCourses++;
    return true;
  }

  bool removeCourse(String course) {
    if (!courses.contains(course)) return false;
    courses.remove(course);
    numCourses--;
    return true;
  }
}

void main() {
  print('Student: ');
  Student student = Student(name: 'Yara', address: 'Tanta');
  print(student.toString());

  student.addCourseGrade('Math', 90);
  student.addCourseGrade('Physics', 85);
  student.printGrades();
  print('Average Grade: ${student.getAverageGrades()}');
  print('Total Courses: ${student.numCourses}');

  print('-----------------------------------\n');
  print('Teacher: ');
  Teacher teacher = Teacher(name: 'Mohamed', address: 'Cairo');
  print(teacher.toString());

  print('Add Math: ${teacher.addCourse('Math')}');
  print('Add Math again: ${teacher.addCourse('Math')}');
  print('Add Physics: ${teacher.addCourse('Physics')}');

  print('Remove Math: ${teacher.removeCourse('Math')}');
  print('Remove Chemistry: ${teacher.removeCourse('Chemistry')}');

  print('Remaining Courses Count: ${teacher.numCourses}');
}
