import 'package:flutter_test/flutter_test.dart';

class MyClass {}

void main() {
  // 1) expect : ใช้สำหรับตรวจสอบว่าค่าหรือสถานะนั้นตรงกับเงื่อนไขที่คาดหวังหรือไม่
  test('expect', () {
    var value = 11;
    expect(value, 11); // ตรวจสอบว่าค่าเท่ากับ 42
  });

  // 2) matches : ใช้สำหรับตรวจสอบว่าข้อความตรงกับ pattern ที่กำหนดไว้ใน RegExp หรือไม่
  test('matches', () {
    // ตรวจสอบว่าข้อความมีคำว่า 'Flutter'
    expect('I love Flutter', matches('Flutter'));
  });

  // 3) throwsException : ใช้สำหรับตรวจสอบว่าการดำเนินการนั้นๆ จะทำให้เกิด Exception หรือไม่
  test('throwsException', () {
    // ตรวจสอบว่าฟังก์ชันจะ throw Exception
    expect(() => throw Exception('Error'), throwsException);
  });

  // 4) isTrue และ isFalse : ใช้สำหรับตรวจสอบว่าค่า boolean นั้นเป็น true หรือ false
  test('isTrue / isFalse', () {
    // ตรวจสอบว่าค่าเป็น true
    expect(true, isTrue);

    // ตรวจสอบว่าค่าเป็น false
    expect(false, isFalse);
  });

  // 5) throwsA : ใช้สำหรับตรวจสอบว่าการดำเนินการนั้นๆ จะ throw exception ที่เฉพาะเจาะจงหรือไม่
  test('throwsA', () {
    // ตรวจสอบว่าฟังก์ชันจะ throw Exception ประเภทเฉพาะ
    expect(() => throw FormatException('Invalid format'), throwsA(isA<FormatException>()));
  });

  // 6) equals : ใช้สำหรับตรวจสอบค่าที่เท่ากัน สามารถใช้กับข้อมูลประเภทต่างๆ
  test('equals', () {
    // ตรวจสอบว่าค่าเท่ากับ 100
    expect(100, equals(100));
  });

  // 7) allOf : ใช้สำหรับตรวจสอบว่าค่าตรงกับทุกเงื่อนไขที่กำหนด
  test('allOf', () {
    // ตรวจสอบว่ามีค่าเป็น 100 และเป็นจำนวน Positive ไหม
    var value = 100;
    expect(value, allOf(equals(100), isPositive));
  });

  // 8) anyOf : ใช้สำหรับตรวจสอบว่าค่าตรงกับอย่างน้อยหนึ่งเงื่อนไขที่กำหนด
  test('anyOf', () {
    // ตรวจสอบว่ามีค่าเป็น 100 และเป็นจำนวน Negative ไหม
    var value = -100;
    expect(value, anyOf(equals(100), isNegative));
  });

  // 9) isNotNull : ใช้สำหรับตรวจสอบว่าค่าไม่เป็น null
  test('isNotNull', () {
    // ตรวจสอบว่าค่าไม่เป็น null
    expect('Flutter', isNotNull);
  });

  // 10) isNull : ใช้สำหรับตรวจสอบว่าค่าเป็น null
  test('isNull', () {
    // ตรวจสอบว่าค่าเป็น null
    expect(null, isNull);
  });

  // 11) greaterThan และ lessThan : ใช้สำหรับตรวจสอบว่าค่ามากกว่าหรือน้อยกว่าค่าที่กำหนด
  test('greaterThan / lessThan', () {
    // ตรวจสอบว่าค่ามากกว่า 10
    expect(15, greaterThan(10));

    // ตรวจสอบว่าค่าน้อยกว่า 20
    expect(15, lessThan(20));
  });

  // 12) closeTo : ใช้สำหรับตรวจสอบค่าที่อยู่ใกล้เคียงกับค่าที่กำหนดไว้
  test('closeTo', () {
    // ตรวจสอบว่าค่า 100.0 อยู่ใกล้เคียงกับ 100.0 ภายในขอบเขต 0.1
    expect(100.1, closeTo(100.0, 0.1));
  });

  // 13) contains : สำหรับตรวจสอบว่าลิสต์หรือข้อความมีสมาชิกหรือข้อความย่อยที่กำหนด
  test('contains', () {
    // ตรวจสอบว่าลิสต์มีสมาชิก 2
    expect([1, 2, 3], contains(2));

    // ตรวจสอบว่าข้อความมีคำว่า "hello"
    expect("hello world", contains("hello"));
  });

  // 14) isEmpty และ isNotEmpty : ใช้สำหรับตรวจสอบว่าลิสต์, ข้อความ, หรือคอลเล็กชันอื่นๆ นั้นว่างเปล่าหรือไม่
  test('isEmpty / isNotEmpty', () {
    // ตรวจสอบว่าลิสต์ว่างเปล่า
    expect([], isEmpty);

    // ตรวจสอบว่าลิสต์ไม่ว่างเปล่า
    expect([1, 2, 3], isNotEmpty);
  });

  // 15) isInstanceOf<T>() : ใช้สำหรับตรวจสอบว่าอ็อบเจ็กต์เป็น instance ของ class ที่กำหนด
  test('isInstanceOf<T>()', () {
    // ตรวจสอบว่า obj เป็น instance ของ MyClass
    var obj = MyClass();
    expect(obj, isInstanceOf<MyClass>());
  });
}