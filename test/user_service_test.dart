import 'package:flutter_test/flutter_test.dart'; // นำเข้าแพ็คเกจสำหรับทำการทดสอบ
import 'package:mockito/mockito.dart'; // นำเข้าแพ็คเกจ mockito
import 'package:my_flutter_app/services/user_service.dart'; // นำเข้า UserService
import 'package:my_flutter_app/models/user_repository.dart'; // นำเข้า UserRepository
import 'mocks/user_service_mock.mocks.dart'; // นำเข้า mock class ที่สร้างขึ้น

void main() {
  late MockUserRepository mockUserRepository; // ประกาศตัวแปรสำหรับ mock UserRepository
  late UserService userService; // ประกาศตัวแปรสำหรับ UserService

  setUp(() { // ตั้งค่าก่อนทำการทดสอบ
    mockUserRepository = MockUserRepository(); // สร้าง instance ของ mock UserRepository
    userService = UserService(mockUserRepository); // สร้าง instance ของ UserService พร้อมใส่ mock UserRepository
  });

  test('getUsername ควรคืนค่าชื่อผู้ใช้ที่ถูกต้อง', () async { // ทดสอบฟังก์ชัน getUsername
    final int userId = 1; // กำหนด userId สำหรับทดสอบ

    // Setup mock ให้ return 'TestUser' เมื่อเรียกใช้ fetchUsername ด้วย userId
    when(mockUserRepository.fetchUsername(userId))
      .thenAnswer((_) async => 'TestUser'); 

    // ทดสอบว่า getUsername คืนค่า 'TestUser'
    final username = await userService.getUsername(userId);
    expect(username, equals('TestUser')); // ตรวจสอบว่าค่าที่คืนมาตรงกับที่คาดหวังหรือไม่

    // ตรวจสอบว่า fetchUsername ถูกเรียกด้วย userId ที่ถูกต้อง
    verify(mockUserRepository.fetchUsername(userId)).called(1);
  });
}