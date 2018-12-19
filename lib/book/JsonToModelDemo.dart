import 'dart:convert';

main() {
  String jsonStr = '[{"name":"Jack"},{"name":"Rose"}]';
  List items = json.decode(jsonStr);
  print(items[0]['name']);
}
