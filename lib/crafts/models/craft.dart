class Craft {
  const Craft({
    required this.slug,
    required this.title,
    required this.description,
    required this.inputs,
  });

  final String slug;

  final String title;

  final String description;

  final List<CraftInput> inputs;
}

class CraftInput {
  const CraftInput({
    required this.name,
    required this.type,
    required this.title,
    required this.description,
    this.required = false,
  });

  final String name;

  final CraftInputType type;

  final String title;

  final String description;

  final bool required;
}

enum CraftInputType {
  text,
  textarea,
}
