class CheckItem {
  // Attribute
  final String title;
  final DateTime timestamp;

  // Konstruktor
  const CheckItem({required this.title, required this.timestamp});

  factory CheckItem.fromJson(Map<String, dynamic> json) {
    return CheckItem(
      title: json['title'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'timestamp': timestamp.toIso8601String(),
    };
  }
  // Methoden
  // ...
}
