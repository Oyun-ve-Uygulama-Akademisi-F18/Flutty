import 'package:flutter/material.dart';

class Constants {
  static const String loginPageImage = 'assets/Mobile-login.png';
  static const String whiteDotsCard = 'assets/white_dots.png';
  static const String socialMediaIconSlack = 'assets/icon/Slack_icon.png';
  static const String socialMediaIconOUA = 'assets/icon/oua_logo.png';
  static const String splashScreen1 = 'assets/Splash_Screen1.png';
  static const String splashScreen2 = 'assets/Splash_Screen2.png';
  static const String splashScreen3 = 'assets/Splash_Screen3.png';
  static const String profileImage = 'https://i.pravatar.cc/300';

  /*----------Color-------*/
  static const Color mainColor = Color(0xFF00C1A6);
  static const Color blackColor = Colors.black;
  static const Color whiteColor = Colors.white;
  static const Color greyColor = Colors.black54;
  static const Color darkColor = Colors.black87;
  static const Color lightWhite = Colors.white70;
  static const Color specialGrey = Color(0xFFE0E0E0);
  static const Color grey = Colors.grey;
  /*-------------SplashText------------*/
  static const String splashScreen1Title1 = 'GAME APP JAM';
  static const String splashScreen1Title2 = 'Peki Flutty Nedir?';
  static const String splashScreen1Title3 = 'Giriş İçin ❤️';
  static const String splashScreen1SubTitle1 =
      "Oyun ve Uygulama Akademisi\n2023'ün Küçük Game App Jami İçin Tasarladığımız Flutty Adlı Uygulamamıza Hoşgeldiniz";
  static const String splashScreen1SubTitle2 =
      'Flutty ile hem motivasyonumuzu toplayıp hemde ooo kocaaaaa \nTopluluğumuzdaki Görevlerimizi, Sorumluluklarımızı, ve sizler için Akademinin öngördüğü verimli vakit geçirebileceğiniz planlamalar sizleri bekliyor. ';
  static const String splashScreen1SubTitle3 =
      'Email ve Şifreni Girip Aramıza Katıl \n Eğer Kayıtlı Değilsen E mail ve Şifre Yazıp Kayıt ol Butonuna Tıklamayı Unutma...';

  /*-------------ActivityText------------*/
  static const String activityTextappbar = 'Aktiviteler';
  static const String activityTexttoday = 'Bugün';
  static const String activityTextbreakfast = 'Kahvaltı';
  static const String activityClock = '06.30';
  static const String activityTextbook = 'Kitap Okuma';
  static const String activityClockmorning = '07.30';
  static const String activityTexttslack = 'Slack Grubuna Göz Atma';
  static const String activityClocknoon = '10.30';
  static const String activityTextflutter = 'Flutter Çalışması';
  static const String activityClockafternoon = '11.30';
  static const String activityTextwork = 'Coursera Videolarını İzleme';
  static const String activityClockafter = '15.30';
  static const String activityTextlive = 'Canlı Yayınlara Katılım';
  static const String activityClocknightr = '15.30';

/*-------------Activity Margin Const-----------*/
  static const double paddingActivity = 15.0;
  static const double marginActivity = 15.0;
  static const double marginActivityappbar = 0;
  static const double marginActivitymid = 10.0;
  /*-------Activity Font Size-------*/
  static const double activityfontSizetittle = 25;
  static const double activityfontSize = 12;
/*------------Login Text--------*/
  static const String loginWelcome = 'Hoşgeldin';
  static const String loginlogin =
      'Oyun ve Uygulama Akademisinin Motivasyon \n Uygulamasında Seni Görmekten Mutluluk Duyuyoruz \n Hadi Hemen Giriş Yap ';
  static const String loginErroxtext = "Lütfen Geçerli Bir Email Adresi Girin";
  static const String loginUsertext = "Email Adresi";
  static const String loginPasswordtext = 'Şifre';
  static const String loginUsercharackter =
      'Şifreniz En Fazla 10 Karekterden Olmalıdır';
  static const String loginUserenterpassword = 'Şifre girmeniz gerekli';
  static const String loginUsercharacktermin =
      'Şifreniz En Az 5 Karakter Olmalıdır';
  static const String loginPasswordtextnot = 'Kayıt Ol';
  static const String loginUserother = 'Veya kullanarak bağlanın';
  static const String loginUser = 'Giriş Yap';
  static const String loginAlert = "Uyarı";
  static const String loginUserincorrect = "Email Adresi veya Şifre Hatalıdır";
  static const String loginUserokey = "Tamam";
/*-------------Profile Text-------*/
  static const String profileAppbartext = 'Bursiyer Profili';
  static const String profileStartext = 'Yıldız Bursiyerler';
/*-----Profile FontWeight-FontSize ------*/
  static const profileFontweight = FontWeight.bold;
  static const double profilefontSize = 18.0;
  static const double profilefontSizemax = 24.0;
/*---------- SizeBox Height -------*/
  static const double profileContainerheight = 200.0;
  static const SizedBox sizedBoxHeight5 = SizedBox(height: 5);
  static const SizedBox sizedBoxHeight10 = SizedBox(height: 10);
  static const SizedBox sizedBoxHeight15 = SizedBox(height: 15);
  static const SizedBox sizedBoxHeight20 = SizedBox(height: 20);
  static const SizedBox sizedBoxHeight40 = SizedBox(height: 40);

/*---------- Padding -------*/
  static const EdgeInsets paddingRightLeft25 =
      EdgeInsets.only(right: 25, left: 25);
  static const EdgeInsets paddingRightLeft10 =
      EdgeInsets.only(right: 10, left: 10);
  static const EdgeInsets paddingRightLeft20 =
      EdgeInsets.only(right: 20, left: 20);
  static const EdgeInsets paddingRightLeftTop10 =
      EdgeInsets.only(right: 10, left: 10, top: 10);
}
