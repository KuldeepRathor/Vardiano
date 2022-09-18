class UserModel {
  static String? name;
  static String? imageUrl;
  static String? ownerUid; // User who have posted the post
  static String? email;
  static String? bio;
}

class UserModel1 {
  String? name;
  String? imageUrl;
  String? ownerUid; // User who have posted the post
  String? email;
  String? bio;
  String? mobile;

  UserModel1({
    required this.name,
    required this.imageUrl,
    required this.ownerUid,
    required this.bio,
    required this.email,
    required this.mobile,
  });
}

List<UserModel1> staticUserData = [
  UserModel1(
    name: "Suyog Patil",
    imageUrl:
    "https://wtspdp.com/wp-content/uploads/2020/03/Doremon-images-for-whatsapp-dp-9.jpg",
    ownerUid: "1",
    email: "suyog720@gmail.com",
    bio:
    "Flutter Developer | Problem Setter at iMocha | 3⭐ CodeChef | Pupil CodeForces",
    mobile: '+91 9654464335',
  ),
  UserModel1(
      name: "Yash Sonawane",
      ownerUid: "2",
      bio:
      "5⭐ @Codechef (2128) | Specialist @Codeforces (1560) | Flutter Developer | Problem Setter at iMocha",
      email: "yash492007@gmail.com",
      imageUrl:
      "https://www.sideshow.com/storage/product-images/3003532/iron-man-mark-xliii_marvel_square.jpg",
      mobile: "+91 9464613216"),
  UserModel1(
    name: "Sudesh Rampurkar",
    ownerUid: "3",
    bio:
    "6⭐ @Codechef (2328) | Legendary Grandmaster @Codeforces (2660) | Problem Setter at iMocha",
    email: "sudeshrampurkar@gmail.com",
    imageUrl: "https://flxt.tmsimg.com/assets/p8553063_b_v13_ax.jpg",
    mobile: "+91 9783265465",
  ),
  UserModel1(
      name: "John Wick",
      ownerUid: "4",
      bio: "Assassin, Movie Actor, Continental",
      email: "johnwick4005@gmail.com",
      imageUrl:
      "https://qph.cf2.quoracdn.net/main-qimg-f010d78b871d3b95da2b1dc6417b4159-lq",
      mobile: "+91 9654132468"),
];
