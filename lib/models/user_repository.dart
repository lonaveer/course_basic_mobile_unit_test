// อินเตอร์เฟซสำหรับการดึงชื่อผู้ใช้
abstract class UserRepository {
  Future<String> fetchUsername(int userId); // ฟังก์ชันสำหรับดึงชื่อผู้ใช้จาก userId
}