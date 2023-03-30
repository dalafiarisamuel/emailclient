class EmailClient {
  String title;
  String icon;
  int notificationCount;

  EmailClient({
    required this.title,
    required this.icon,
    required this.notificationCount,
  });
}

List<EmailClient> emailClients = [
  EmailClient(
    title: 'Google',
    icon:
        'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png',
    notificationCount: 12,
  ),
  EmailClient(
    title: 'Outlook',
    icon:
        'https://vectorseek.com/wp-content/uploads/2022/02/Mozilla-Thunderbird-Logo-Vector-730x730.jpg',
    notificationCount: 7,
  ),
  EmailClient(
    title: 'Apple',
    icon:
        'https://www.logolynx.com/images/logolynx/33/33bc92aa6a121c17dd4317863f2a4b90.jpeg',
    notificationCount: 8,
  ),
  EmailClient(
    title: 'Thunderbird',
    icon:
        'https://vectorseek.com/wp-content/uploads/2022/02/Mozilla-Thunderbird-Logo-Vector-730x730.jpg',
    notificationCount: 10,
  ),
  EmailClient(
    title: 'Outlook',
    icon:
        'https://vectorseek.com/wp-content/uploads/2022/02/Mozilla-Thunderbird-Logo-Vector-730x730.jpg',
    notificationCount: 7,
  ),
  EmailClient(
    title: 'Google',
    icon:
        'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png',
    notificationCount: 12,
  ),
  EmailClient(
    title: 'Apple',
    icon:
        'https://www.logolynx.com/images/logolynx/33/33bc92aa6a121c17dd4317863f2a4b90.jpeg',
    notificationCount: 8,
  ),
];
