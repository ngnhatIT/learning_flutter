// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

class Repository {
  final _random = Random();

  int _randomRange(int min, int max) => min + _random.nextInt(max - min);

  Future<List<Item>> fetchItems() async {
    await Future<void>.delayed(Duration(seconds: _randomRange(1, 5)));
    return List.of(_generateItemsList(10));
  }

  List<Item> _generateItemsList(int length) {
    return List.generate(
      length,
      (index) => Item(id: '$index', value: 'Item $index'),
    );
  }

  Future<void> deleteItem(String id) async {
    await Future<void>.delayed(Duration(seconds: _randomRange(1, 5)));
  }
}

class Item {
  String id;
  String value;
  Item({
    required this.id,
    required this.value,
  });
}
