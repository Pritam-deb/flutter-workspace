class Student {
  final String studentID;
  final String studentName;
  final int? studentScore;

  Student(
      {required this.studentID, required this.studentName, this.studentScore});

  factory Student.fromJson(Map<String, dynamic> parsedJson) {
    return Student(
        studentID: parsedJson['id'],
        studentName: parsedJson['name'],
        studentScore: parsedJson['score']);
  }
}
