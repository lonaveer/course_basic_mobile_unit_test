Future<String> fetchUserOrder() async {
  return Future.delayed(
    Duration(seconds: 2),
    () => 'Latte',
  );
}