import 'package:impasto/crafts/models/craft.dart';

final List<Craft> dummyCrafts = [
  const Craft(
    slug: '00000000',
    title: 'Generate Image',
    description: 'Generate image with Stable Diffusion XL',
    inputs: [
      CraftInput(
        name: 'prompt',
        type: CraftInputType.textarea,
        title: 'Prompt',
        description: 'Things you want to see in your image.',
        required: true,
      ),
      CraftInput(
        name: 'negative_prompt',
        type: CraftInputType.textarea,
        title: 'Negative Prompt',
        description: 'Things you don\'t want to see in your image.',
        required: false,
      )
    ],
  )
];
