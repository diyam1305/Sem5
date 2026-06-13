import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:lab17tolab20/student_model.dart';

class Helper {
  static final Helper instance = Helper.internal();
  Helper.internal();
  Database? _database;
  Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), 'Demo.db');
    return await openDatabase(
      path,
      version: 2,
      onCreate: (db, version) {
        db.execute(
          'CREATE TABLE studentDetail(studentID INTEGER PRIMARY KEY AUTOINCREMENT ,studentName TEXT,studentEnrollmentNO INTEGER, semester TEXT, branch TEXT, mobile TEXT, password TEXT, className TEXT)',
        );
      },
    );
  }

  Future<void> insertStudent(Student student) async {
    final db = _database ?? await initDatabase();
    await db.insert('studentDetail', student.toMap());
  }

  Future<List<Student>> getStudents() async {
    final db = _database ?? await initDatabase();
    final result = await db.query('studentDetail');
    return result.map((map) => Student.fromMap(map)).toList();
  }

  // Lab18 Login
  Future<Student?> getStudentByName(String name) async {
    final db = _database ?? await initDatabase();
    final result = await db.query(
      'studentDetail',
      where: 'studentName = ?',
      whereArgs: [name],
    );
    if (result.isNotEmpty) {
      return Student.fromMap(result.first);
    }
    return null;
  }

  Future<void> updateStudent(Student student) async {
    final db = _database ?? await initDatabase();
    await db.update(
      'studentDetail',
      student.toMap(),
      where: 'studentEnrollmentNO = ?',
      whereArgs: [student.studentEnrollmentNO],
    );
  }

  Future<void> deleteStudent(int enrollmentNo) async {
    final db = _database ?? await initDatabase();
    await db.delete(
      'studentDetail',
      where: 'studentEnrollmentNO = ?',
      whereArgs: [enrollmentNo],
    );
  }
}
