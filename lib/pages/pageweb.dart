import 'package:flutter/material.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:gif_view/gif_view.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageWeb extends StatefulWidget {
  const PageWeb({super.key});

  @override
  State<PageWeb> createState() => _PageWebState();
}

class Keys {
  static final keyBlue = GlobalKey();
  static final keyGrenn = GlobalKey();
  static final KeyRed = GlobalKey();
  static final KeyHome = GlobalKey();
  static final KeyYello = GlobalKey();
  late Key key;
}

class _PageWebState extends State<PageWeb> with TickerProviderStateMixin {
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
    const url = 'https://github.com/douglasj44';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
      print("funciona");
    } else {
      throw 'Could not launch $url';
    }
  }

  void abrirUrlLattes() async {
    const url = 'http://lattes.cnpq.br/4481728517200315';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
      print("funciona");
    } else {
      throw 'Could not launch $url';
    }
  }

  void abrirUrlFace() async {
    const url = 'https://www.facebook.com/BiotecSS/?ref=page_internal';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
      print("funciona");
    } else {
      throw 'Could not launch $url';
    }
  }

  void abrirUrlInsta() async {
    const url = 'https://www.instagram.com/dougj00/';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
      print("funciona");
    } else {
      throw 'Could not launch $url';
    }
  }

  void abrirUrl() async {
    const url =
        'https://drive.google.com/file/d/1p_3ifk2iH-zwvkfvD-9u9cqq_QCtsYMd/view?usp=sharing';
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
            title: Text("alerta"),
            content: Text("um texto"),
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
          leading: Container(
            width: 50,
            height: 50,
            child: GifView.asset(
              "assets/logo-gif.gif",
              height: 200,
              frameRate: 30,
            ),
          ),
          title: Text("Portifolio Douglas José"),
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromRGBO(4, 10, 34, 1),
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
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                Color.fromRGBO(0, 51, 255, 1),
                Color.fromARGB(255, 125, 126, 128),
              ])),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //1 - Home
                Padding(
                  padding:
                      EdgeInsets.only(top: 60, bottom: 0, left: 0, right: 0),
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
                  child: Container(
                    width: screenwidth,
                    height: screenheight * 0.6,
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
                                  width: 300,
                                  child: Text(
                                    "Soluções Rapidas e inteligentes para sua empresa ou projeto pessoal, com flexibilidade e valores acessiveis com o maximo de qualidade! Sempre pronto para tronar seus sonhos realidade!",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 24),
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
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  height: 300,
                                  width: 300,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: GifView.asset(
                                      "assets/logo-gif.gif",
                                      height: 350,
                                      frameRate: 30,
                                    ),
                                  )),
                            ],
                          ),
                          Spacer(),
                        ]),
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
                  child: Stack(children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 0, bottom: 0, left: 250, right: 250),
                      child: Container(
                        alignment: Alignment.centerRight,
                        width: screenwidth * 1,
                        height: screenheight * 0.7,
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
                    ),
                    Container(
                      key: Keys.keyBlue,
                      color: Colors.transparent,
                      width: screenwidth,
                      height: screenheight * 0.9,
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
                                        width: 100,
                                      ),
                                      Text(
                                        "Sobre",
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 100,
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
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Spacer(),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      height: 350,
                                      width: 250,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image(
                                            image:
                                                AssetImage("assets/image1.jpg"),
                                            fit: BoxFit.cover),
                                      )),
                                ],
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 35,
                                  ),
                                  Container(
                                      width: 300,
                                      child: Text(
                                        "Localizada em Porto velho Rondonia, e atendendo nas principais startups locais, o desenvolvedor geral Douglas José ja atua na area a mais de 4anos!",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      )),
                                  const SizedBox(
                                    height: 35,
                                  ),
                                  ElevatedButton.icon(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                      ),
                                      onPressed: () {
                                        print("ok");
                                        abrirUrl();
                                      },
                                      icon: Lottie.asset(Icons8.information,
                                          width: 15,
                                          height: 15,
                                          controller: _animationController),
                                      label: Text(
                                        "Saiba mais!",
                                        style: TextStyle(color: Colors.black),
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
                    )
                  ]),
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
                    padding: EdgeInsets.only(
                        top: 45, bottom: 30, left: 30, right: 30),
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 0, bottom: 0, left: 250, right: 250),
                          child: Container(
                            alignment: Alignment.centerRight,
                            width: screenwidth * 1,
                            height: screenheight * 0.7,
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
                        ),
                        Container(
                          key: Keys.KeyRed,
                          color: Colors.transparent,
                          width: screenwidth,
                          height: screenheight * 0.9,
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
                                            width: 52,
                                          ),
                                          Text(
                                            "Quem Sou!",
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.black),
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
                              SizedBox(
                                height: 50,
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
                                            "Desenvolvedor de sistemas e aplicativos, com formação em Analise e Desenvolvimento de sistemas! experiencia pratica em c# dot.net e dart flutter, WebPage com Javascript, com conhecimento voltato para atender o maximo de publico possivel",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16),
                                          )),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
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
                                          height: 350,
                                          width: 250,
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
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                Divider(
                  height: 2,
                  thickness: 2,
                  endIndent: 100,
                  indent: 100,
                  color: Colors.white,
                ),
                //4 - Objetivos
                Padding(
                  padding:
                      EdgeInsets.only(top: 45, bottom: 30, left: 30, right: 30),
                  child: Container(
                    key: Keys.keyGrenn,
                    color: Colors.transparent,
                    width: screenwidth,
                    height: screenheight * 0.9,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 0, bottom: 0, left: 250, right: 250),
                          child: Container(
                            alignment: Alignment.centerRight,
                            width: screenwidth * 1,
                            height: screenheight * 0.7,
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
                        ),
                        Column(
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
                                              color: Colors.black),
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
                            SizedBox(
                              height: 50,
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
                                        height: 350,
                                        width: 250,
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
                                SizedBox(
                                  width: 50,
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 35,
                                    ),
                                    Container(
                                        width: 300,
                                        child: Text(
                                          "Meu objetivo a sempre esta melhorando minha base de conhecimento, visando sempre as melhores soluções para alcançar o melhor resultado possivel!",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
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
                        )
                      ],
                    ),
                  ),
                ),
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
                              'Nome: Douglas J. M. Araujo',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Email: douglasj44@gmail.com',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Telefone: (69) 99324-2800',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
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
                                      style: TextStyle(color: Colors.white),
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
                                      style: TextStyle(color: Colors.white),
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
                                      style: TextStyle(color: Colors.white),
                                    )),
                                TextButton.icon(
                                    onPressed: () {
                                      abrirUrlLattes();
                                    },
                                    icon: Icon(
                                      FontAwesomeIcons.person,
                                      color: Colors.white,
                                    ),
                                    label: Text(
                                      "Curriculo Lattes",
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ],
                            )
                          ],
                        ),
                      ],
                    )),
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
    path.lineTo(size.width * 0.75, 0); // Ponto superior
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
    path.moveTo(size.width * 0.25, 0);
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
