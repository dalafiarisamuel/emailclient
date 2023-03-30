class OnBoardingData {
  String title;
  String subtitle;
  String onBoardingImage;

  OnBoardingData({
    required this.title,
    required this.subtitle,
    required this.onBoardingImage,
  });

  static List<OnBoardingData> onBoardingDataList = [
    OnBoardingData(
      title: 'Encrypted And Reliable Email Client Service',
      subtitle:
          'Our products are open source & they have been independently audited by thousands of experts around the world.',
      onBoardingImage: 'assets/onboarding-1.svg',
    ),
    OnBoardingData(
      title: 'Encrypted And Reliable Email Client Service',
      subtitle:
      'Our products are open source & they have been independently audited by thousands of experts around the world.',
      onBoardingImage: 'assets/onboarding-2.svg',
    ),
    OnBoardingData(
      title: 'Encrypted And Reliable Email Client Service',
      subtitle:
      'Our products are open source & they have been independently audited by thousands of experts around the world.',
      onBoardingImage: 'assets/onboarding-1.svg',
    ),
    OnBoardingData(
      title: 'Encrypted And Reliable Email Client Service',
      subtitle:
      'Our products are open source & they have been independently audited by thousands of experts around the world.',
      onBoardingImage: 'assets/onboarding-2.svg',
    )
  ];
}
