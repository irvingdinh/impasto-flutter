import 'package:impasto/crafts/models/craft.dart';

final List<Craft> dummyCrafts = [
  const Craft(
    slug: '00000000',
    title: 'Generate Image',
    description: 'Generate image with Stable Diffusion XL',
    input: [
      CraftInput(
        name: 'prompt',
        type: CraftInputType.textarea,
        title: 'Prompt',
        description: 'Things you want to see in your image.',
        required: true,
      )
    ],
  )
];
