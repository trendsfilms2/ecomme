class AppUser {
  final String userId;
  final String name;
  final String email;
  final String phone;
  final String role;

  AppUser({
    required this.userId,
    required this.name,
    required this.email,
    required this.phone,
    required this.role,
  });

  factory AppUser.fromJson(Map<String, dynamic> json) {
    return AppUser(
      userId: json['userId'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      role: json['role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'name': name,
      'email': email,
      'phone': phone,
      'role': role,
    };
  }
}
