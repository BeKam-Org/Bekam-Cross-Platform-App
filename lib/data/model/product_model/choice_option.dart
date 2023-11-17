part of product_model;

/// Represents a choice option with its name, title, and available options.
class ChoiceOption {
  // Properties

  /// The name of the choice option.
  String? _name;

  /// The title of the choice option.
  String? _title;

  /// The available options for the choice.
  List<String>? _options;

  // Constructor

  /// Creates an instance of the [ChoiceOption] class.
  ChoiceOption({String? name, String? title, List<String>? options}) {
    _name = name;
    _title = title;
    _options = options;
  }

  // Getter methods

  /// Gets the name of the choice option.
  String? get name => _name;

  /// Gets the title of the choice option.
  String? get title => _title;

  /// Gets the available options for the choice.
  List<String>? get options => _options;

  // Methods

  /// Creates a [ChoiceOption] instance from a JSON map.
  ChoiceOption.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _title = json['title'];
    _options = json['options'].cast<String>();
  }

  /// Converts the [ChoiceOption] instance to a JSON map.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = _name;
    data['title'] = _title;
    data['options'] = _options;
    return data;
  }
}
