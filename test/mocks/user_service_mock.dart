import 'package:mockito/annotations.dart'; // นำเข้า annotations จาก mockito
import 'package:my_flutter_app/models/user_repository.dart'; // นำเข้า UserRepository
part 'mocks.g.dart'; // กำหนดส่วนขยายสำหรับไฟล์ที่จะสร้างโดยอัตโนมัติ

@GenerateMocks([UserRepository]) // ระบุว่าต้องการสร้าง mock สำหรับ UserRepository
void main() {}