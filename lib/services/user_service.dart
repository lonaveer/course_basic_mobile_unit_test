import 'package:my_flutter_app/models/user_repository.dart'; // นำเข้า UserRepository

// คลาส UserService ที่มี UserRepository เป็น dependency
class UserService {
  final UserRepository repository; // อ้างอิงไปยัง UserRepository

  UserService(this.repository); // Constructor ที่รับ UserRepository เข้ามา

  Future<String> getUsername(int userId) async { // ฟังก์ชันสำหรับดึงชื่อผู้ใช้
    return await repository.fetchUsername(userId); // เรียกใช้ฟังก์ชัน fetchUsername จาก repository
  }
}