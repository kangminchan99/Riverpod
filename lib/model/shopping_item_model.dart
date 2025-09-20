class ShoppingItemModel {
  // 이름
  final String name;
  // 수량
  final int quantity;
  // 구매여부
  final bool isPurchased;
  // 매운지
  final bool isSpicy;

  ShoppingItemModel({
    required this.name,
    required this.quantity,
    required this.isPurchased,
    required this.isSpicy,
  });
}
