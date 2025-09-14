class Order {
  final String orderId;
  final String userId;
  final List<String> productIds;
  final double totalAmount;
  final DateTime orderDate;
  final String status;

  Order({
    required this.orderId,
    required this.userId,
    required this.productIds,
    required this.totalAmount,
    required this.orderDate,
    required this.status,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      orderId: json['orderId'],
      userId: json['userId'],
      productIds: List<String>.from(json['productIds']),
      totalAmount: json['totalAmount'].toDouble(),
      orderDate: DateTime.parse(json['orderDate']),
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'orderId': orderId,
      'userId': userId,
      'productIds': productIds,
      'totalAmount': totalAmount,
      'orderDate': orderDate.toIso8601String(),
      'status': status,
    };
  }
}
