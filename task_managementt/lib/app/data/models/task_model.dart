class TaskModel {
  final String id;
  final String title;
  final String description;
  final DateTime createdAt;
  bool isCompleted;

  TaskModel({
    required this.id,
    required this.title,
    this.description = '',
    DateTime? createdAt,
    this.isCompleted = false,
  }) : createdAt = createdAt ?? DateTime.now();

  Map<String, dynamic> toMap() {
    return {
      'id' : id,
      'title' : title,
      'description' : description,
      'createdAt' : createdAt.toIso8601String(),
      'isCompleted' : isCompleted,
    };
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      id: map['id'],
      title: map['title'],
      description: map['description'] ?? '',
      createdAt: DateTime.parse(map['createdAt']),
      isCompleted: map['isCompleted'] ?? false,
    );
  }

  TaskModel copyWith({
    String? id,
    String? title,
    String? description,
    DateTime? createdAt,
    bool? isCompleted,
  }) {
    return TaskModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}