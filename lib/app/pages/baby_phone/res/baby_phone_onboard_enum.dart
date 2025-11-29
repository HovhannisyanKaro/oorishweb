import 'package:oorishweb/res/values/images/images.dart';

enum BabyPhoneLandingEnum {
  learnTime(
    title: 'Learn to Tell Time ⏰',
    description: 'Fun clock quizzes turn playtime into gentle, stress-free practice as your child matches the clock to the correct time, building real time-reading skills and confidence with bright, friendly visuals.',
    image: AppIcons.babyPhoneLearnTime,
  ),
  telephony(
    title: 'Call & Chat with Animal Friends',
    description: 'A safe pretend phone where your child dials numbers, gets surprise calls, listens to each animal’s joyful song, and chats with cute emojis, building number sense, language, and social confidence through happy play.',
    image: AppIcons.babyPhoneTelephony,
  ),
  tinyExplorerWild(
    title: 'Tiny Explorer: Forest',
    description: 'A calm, interactive forest walk where your child discovers animals by name, explores with simple swipes, and naturally builds vocabulary, curiosity, and love for nature through gentle play.',
    image: AppIcons.babyPhoneLearnForestAnimals,
  ),
  tinyExplorerOcean(
    title: 'Tiny Explorer: Ocean',
    description: 'A gentle underwater adventure where your child swipes to discover sea creatures, taps to hear their names, and naturally builds vocabulary, curiosity, and love for the ocean through calm, playful exploration.',
    image: AppIcons.babyPhoneLearnOceanAnimals,
  ),
  tinyExplorerFarm(
    title: 'Tiny Explorer: Farm',
    description: 'A cozy barnyard world where your child swipes to explore, taps friendly animals to hear their names, and naturally learns domestic animals through gentle, playful discovery.',
    image: AppIcons.babyPhoneLearnDomesticAnimals,
  ),
  plantFoodsFruits(
    title: 'Sing & Learn Fruits',
    description: 'Adorable fruity characters sing catchy songs that teach each fruit’s name while turning screen time into joyful dancing, language practice, and early healthy food awareness.',
    image: AppIcons.babyPhoneLearnFruits,
  ),
  plantFoodsVeggies(
    title: 'Sing & Learn Veggies',
    description: 'Cute vegetable friends sing catchy songs that teach each veggie’s name, turning screen time into joyful dancing, language growth, and a positive attitude toward healthy foods.',
    image: AppIcons.babyPhoneLearnVeggies,
  ),
  pixelArt(
    title: 'Pixel Art Puzzles',
    description: 'Your child matches colors to tiny squares to recreate cute pictures, with gentle hints that support focus, patience, color recognition, and fine motor skills through calm, satisfying play.',
    image: AppIcons.babyPhonePixelArt,
  ),
  guessColorShape(
    title: 'Shape Ship Match',
    description: 'Your child picks the correct shape and color to fill the wagon and send the boat sailing, quietly building logic, attention, and fine motor skills through simple, satisfying play.',
    image: AppIcons.babyPhoneGuessColorShape,
  ),
  guessAnimal(
    title: 'Shadow Match Farm',
    description: 'Your child matches each friendly animal to its shadow in the wagon, strengthening observation, thinking skills, and confidence as the tractor rolls in with new gentle challenges.',
    image: AppIcons.babyPhoneGuessAnimal,
  ),
  coloring(
    title: 'Color & Create',
    description: 'Simple, soothing coloring pages of animals, family, and vehicles help your child relax, focus, and express creativity while naturally improving fine motor skills and color recognition.',
    image: AppIcons.babyPhoneColoring,
  ),
  miniGames(
    title: 'Magic Touch Mini Games',
    description: 'A bundle of gentle car races, star-tracing letters and shapes, rainbow and firework taps, and popping balloons & bubbles that turn simple touches into better coordination, early writing skills, and pure happy play.',
    image: AppIcons.babyPhoneMiniGames,
  ),
  ;

  final String title;
  final String description;
  final AppIcons image;

  const BabyPhoneLandingEnum({required this.title, required this.description, required this.image});
}
