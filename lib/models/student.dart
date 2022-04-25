class Student {
  String studentID;
  String studentName;
  int studentScore;

  Student(
      {required this.studentID,
      required this.studentName,
      required this.studentScore});

  factory Student.fromJson(Map<String, dynamic> parsedJson) {
    return Student(
        studentID: parsedJson['id'],
        studentName: parsedJson['name'],
        studentScore: parsedJson['score']);
  }
}
