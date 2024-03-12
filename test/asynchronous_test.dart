import 'package:flutter_test/flutter_test.dart';
import 'package:my_flutter_app/utils/asynchronous.dart';
// หมายเหตุ : my_flutter_app คือ ชื่อโปรเจ็คนี้

void main() {
  test('fetchUserOrder returns Latte', () async {
    // เรียกใช้ฟังก์ชันและรอผลลัพธ์
    var order = await fetchUserOrder();

    // ตรวจสอบว่าผลลัพธ์ที่ได้ตรงกับที่คาดหวัง
    expect(order, 'Latte');
  });
}