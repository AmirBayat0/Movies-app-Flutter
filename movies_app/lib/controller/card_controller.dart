import 'package:get/get.dart';

import '../model/movies.dart';

class CardController extends GetxController {
  RxList<MoviesModel> listOfMovies = [
    MoviesModel(
      title: "Spider-Man: No Way Home",
      imageAd: "assets/images/3.jpg",
      genre: "Action/Adventure",
      iMBd: '8.6',
      time: '2h 28m',
      director: 'Jon Watts',
      writer: 'Chris McKenna',
      description:
          "With Spider-Man's identity now revealed, our friendly neighborhood web-slinger is unmasked and no longer able to separate his normal life as Peter Parker from the high stakes of being a superhero. When Peter asks for help from Doctor Strange, the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.",
    ),
    MoviesModel(
      title: "Licorice Pizza",
      imageAd: "assets/images/1.jpg",
      genre: "Romance/Drama",
      iMBd: '7.5',
      time: '2h 12m',
      director: 'Paul Thomas Anderson',
      writer: 'Paul Thomas Anderson',
      description:
          "Licorice Pizza is a 2021 American coming-of-age comedy-drama film written and directed by Paul Thomas Anderson. It stars Alana Haim and Cooper Hoffman in their film debuts, alongside an ensemble supporting cast including Sean Penn, Tom Waits, Bradley Cooper, and Benny Safdie.",
    ),
    MoviesModel(
      title: "Uncharted",
      imageAd: "assets/images/2.jpg",
      genre: "Adventure/Action",
      iMBd: '6.7',
      time: '1h 56m',
      director: 'Ruben Fleischer',
      writer: 'Amy Hennig',
      description:
          "Treasure hunter Victor Sully Sullivan recruits street-smart Nathan Drake to help him recover a 500-year-old lost fortune amassed by explorer Ferdinand Magellan. What starts out as a heist soon becomes a globe-trotting, white-knuckle race to reach the prize before the ruthless Santiago Moncada can get his hands on it. If Sully and Nate can decipher the clues and solve one of the world's oldest mysteries, they stand to find \$5 billion in treasure -- but only if they can learn to work together.",
    ),
    MoviesModel(
      title: "Marry Me",
      imageAd: "assets/images/4.jpg",
      genre: "Romance/Comedy",
      iMBd: '6.1',
      time: '1h 52m',
      director: 'Kat Coiro',
      writer: 'John Rogres',
      description:
          "Pop superstar Kat Valdez is about to get married before an audience of her loyal fans. However, seconds before the ceremony, she learns about her fiance's cheating ways and has a meltdown on stage. In a moment of inspired insanity, Kat locks eyes with a total stranger in the crowd and marries him on the spot. As forces conspire to separate the unlikely newlyweds, they must soon decide if two people from such different worlds can find true love together.",
    ),
    MoviesModel(
      title: "Moonfall",
      imageAd: "assets/images/5.jpg",
      genre: "Sci-fi/Adventure",
      iMBd: '5.3',
      time: '2h 10m',
      director: 'Roland Emmerich',
      writer: 'Roland Emmerich',
      description:
          "The world stands on the brink of annihilation when a mysterious force knocks the moon from its orbit and sends it hurtling toward a collision course with Earth. With only weeks before impact, NASA executive Jocinda Jo Fowler teams up with a man from her past and a conspiracy theorist for an impossible mission into space to save humanity.",
    ),
  ].obs;

  var currentIndex = 0.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
