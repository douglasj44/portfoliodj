import 'package:flutter/material.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:gif_view/gif_view.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/userfull/strings.dart';

class PageMobile extends StatefulWidget {
  const PageMobile({super.key});

  @override
  State<PageMobile> createState() => _PageMobileState();
}

class Keys {
  static final keyBlue = GlobalKey();
  static final keyGrenn = GlobalKey();
  static final KeyRed = GlobalKey();
  static final KeyHome = GlobalKey();
  static final KeyYello = GlobalKey();
  late Key key;
}

class _PageMobileState extends State<PageMobile> with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..repeat();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  void abrirUrlGitHub() async {
    const url = github;
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
      print("funciona");
    } else {
      throw 'Could not launch $url';
    }
  }

  void abrirUrlLattes() async {
    const url = lattes;
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
      print("funciona");
    } else {
      throw 'Could not launch $url';
    }
  }

  void abrirUrlFace() async {
    const url = face;
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
      print("funciona");
    } else {
      throw 'Could not launch $url';
    }
  }

  void abrirUrlInsta() async {
    const url = insta;
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
      print("funciona");
    } else {
      throw 'Could not launch $url';
    }
  }

  void abrirUrl() async {
    const url = pdfPort;
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
      print("funciona");
    } else {
      throw 'Could not launch $url';
    }
  }

  void abrirApp() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Atenção"),
            content: Text(textDownload),
            actions: [
              TextButton.icon(
                  onPressed: () {
                    print("Fechei!");
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.info),
                  label: Text("Fechar!")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: Container(
            width: 65,
            height: 65,
            child: Image.asset("assets/fundoDJ.png"),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromRGBO(0, 51, 255, 1),
          elevation: 0,
          actions: [
            TextButton.icon(
                onPressed: () {
                  Scrollable.ensureVisible(Keys.KeyHome.currentContext!);
                },
                label: const Text(
                  "home",
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                )),
            TextButton.icon(
                onPressed: () {
                  Scrollable.ensureVisible(Keys.keyBlue.currentContext!);
                },
                label: const Text(
                  "Sobre",
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                )),
            TextButton.icon(
                onPressed: () {
                  Scrollable.ensureVisible(Keys.KeyRed.currentContext!);
                },
                label: const Text(
                  "Grupo",
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.group,
                  color: Colors.white,
                )),
            TextButton.icon(
                onPressed: () {
                  Scrollable.ensureVisible(Keys.keyGrenn.currentContext!);
                },
                label: const Text(
                  "Objetivo",
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.emoji_objects_outlined,
                  color: Colors.white,
                )),
            TextButton.icon(
                onPressed: () {
                  Scrollable.ensureVisible(Keys.KeyYello.currentContext!);
                },
                label: const Text(
                  "info",
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.info,
                  color: Colors.white,
                )),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                Color.fromRGBO(0, 51, 255, 1),
                Color.fromARGB(255, 97, 98, 99),
              ])),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //1 - Home
                Padding(
                  padding:
                      EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 0),
                  child: Container(
                    key: Keys.KeyHome,
                    child: Divider(
                      height: 2,
                      thickness: 2,
                      endIndent: 100,
                      indent: 100,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 45, bottom: 30, left: 30, right: 30),
                  child: Stack(
                    children: [
                      Container(
                        width: screenwidth,
                        height: 200,
                        color: Colors.transparent,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Spacer(),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 35,
                                  ),
                                  Container(
                                      width: 200,
                                      child: Text(
                                        inithome,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      )),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  ElevatedButton.icon(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                      ),
                                      onPressed: () {
                                        print("ok");
                                        abrirApp();
                                      },
                                      icon: Lottie.asset(Icons8.cloud,
                                          width: 20,
                                          height: 20,
                                          controller: _animationController),
                                      label: Text(
                                        "Download",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      height: 150,
                                      width: 150,
                                      child: CircleAvatar(
                                        radius: 50,
                                        backgroundImage:
                                            AssetImage("assets/perfil.jpg"),
                                      )),
                                ],
                              ),
                              Spacer(),
                            ]),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  height: 2,
                  thickness: 2,
                  endIndent: 100,
                  indent: 100,
                  color: Colors.white,
                ),
                //2 - SOBRE
                Padding(
                  padding:
                      EdgeInsets.only(top: 45, bottom: 30, left: 30, right: 30),
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        width: screenwidth,
                        height: screenheight * 0.50,
                        child: ClipPath(
                          clipper: TriangleClipper(),
                          child: Container(
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.center,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                  Colors.blue,
                                  Colors.white,
                                ])),
                          ),
                        ),
                      ),
                      Container(
                        key: Keys.keyBlue,
                        color: Colors.transparent,
                        width: screenwidth,
                        height: 350,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "Sobre",
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          color: Colors.white,
                                          width: 65,
                                          height: 2,
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Spacer(),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        height: 250,
                                        width: 150,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image(
                                              image: AssetImage(
                                                  "assets/image1.jpg"),
                                              fit: BoxFit.cover),
                                        )),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 35,
                                    ),
                                    Container(
                                        width: 200,
                                        child: Text(
                                          sobre,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12),
                                        )),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    ElevatedButton.icon(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.white),
                                        ),
                                        onPressed: () {
                                          abrirUrl();
                                          print("ok");
                                        },
                                        icon: Lottie.asset(Icons8.information,
                                            width: 15,
                                            height: 15,
                                            controller: _animationController),
                                        label: Text(
                                          "Saiba mais!",
                                          style: TextStyle(color: Colors.black),
                                        )),
                                  ],
                                ),
                                Spacer(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  height: 2,
                  thickness: 2,
                  endIndent: 100,
                  indent: 100,
                  color: Colors.white,
                ),
                //3 - QUEM SOMOS
                Padding(
                  padding:
                      EdgeInsets.only(top: 45, bottom: 30, left: 30, right: 30),
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.centerRight,
                        width: screenwidth,
                        height: screenheight * 0.50,
                        child: ClipPath(
                          clipper: InvertedTriangleClipper(),
                          child: Container(
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.center,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                  Colors.blue,
                                  Colors.white,
                                ])),
                          ),
                        ),
                      ),
                      Container(
                        key: Keys.KeyRed,
                        color: Colors.transparent,
                        width: screenwidth,
                        height: 350,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          "Quem Sou!",
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          color: Colors.white,
                                          width: 75,
                                          height: 2,
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Spacer(),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 35,
                                    ),
                                    Container(
                                        width: 200,
                                        child: Text(
                                          quemsou,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12),
                                        )),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        height: 250,
                                        width: 150,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image(
                                              image: AssetImage(
                                                  "assets/image2.jpg"),
                                              fit: BoxFit.cover),
                                        )),
                                  ],
                                ),
                                Spacer(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 2,
                  thickness: 2,
                  endIndent: 100,
                  indent: 100,
                  color: Colors.white,
                ),
                //4 - Objetivos
                Padding(
                    padding: EdgeInsets.only(
                        top: 45, bottom: 30, left: 30, right: 30),
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.centerRight,
                          width: screenwidth,
                          height: screenheight * 0.50,
                          child: ClipPath(
                            clipper: TriangleClipper(),
                            child: Container(
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.center,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                    Colors.blue,
                                    Colors.white,
                                  ])),
                            ),
                          ),
                        ),
                        Container(
                          key: Keys.keyGrenn,
                          color: Colors.transparent,
                          width: screenwidth,
                          height: 350,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            "Objetivos",
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            color: Colors.white,
                                            width: 65,
                                            height: 2,
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Spacer(),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          height: 250,
                                          width: 150,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: Image(
                                                image: AssetImage(
                                                    "assets/image3.jpg"),
                                                fit: BoxFit.cover),
                                          )),
                                    ],
                                  ),
                                  Spacer(),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 35,
                                      ),
                                      Container(
                                          width: 200,
                                          child: Text(
                                            objetve,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12),
                                          )),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                const Divider(
                  height: 2,
                  thickness: 2,
                  endIndent: 100,
                  indent: 100,
                  color: Colors.white,
                ),
                //5- INFORMAÇÕES DE CONTATO
                Container(
                    width: screenwidth,
                    height: screenheight * 0.2,
                    key: Keys.KeyYello,
                    color: Colors.transparent,
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            Text(
                              "Informação de contato!",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Nome: $nome',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Email: $email',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Telefone: $telefone',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    )),
                // 6- links
                Container(
                  width: screenwidth,
                  height: screenheight * 0.2,
                  color: Colors.transparent,
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              TextButton.icon(
                                  onPressed: () {
                                    abrirUrlGitHub();
                                  },
                                  icon: FaIcon(
                                    FontAwesomeIcons.github,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    "GitHub",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  )),
                              TextButton.icon(
                                  onPressed: () {
                                    abrirUrlFace();
                                  },
                                  icon: Icon(
                                    FontAwesomeIcons.facebook,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    "Facebook",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  )),
                              TextButton.icon(
                                  onPressed: () {
                                    abrirUrlInsta();
                                  },
                                  icon: Icon(
                                    FontAwesomeIcons.instagram,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    "Instagram",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  )),
                              TextButton.icon(
                                  onPressed: () {
                                    abrirUrlLattes();
                                  },
                                  icon: Icon(
                                    Icons.file_open,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    "Curriculo Lattes",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height); // Ponto inicial
    path.lineTo(size.width * 1, 0); // Ponto superior
    path.lineTo(size.width, size.height); // Ponto final
    path.close(); // Fecha o caminho para formar um triângulo
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false; // Não é necessário recalcular o clip
  }
}

class InvertedTriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width * 0, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
