class OnbordingContent {
  String image;
  String title;
  String discription;

  OnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<OnbordingContent> contents = [
  OnbordingContent(
      //0
      title: 'Chat Box',
      image: 'assets/1.png',
      discription:
          "Chat with your love ones. Also invite them in your gupshup."),
  OnbordingContent(
      //1
      title: 'Events',
      image: 'assets/2.png',
      discription:
          "Add Events, tasks and Always remember you family Expectations."),
  OnbordingContent(
      //2
      title: 'Locator',
      image: 'assets/3.png',
      discription:
          "Track you their activities using google map"),
];
