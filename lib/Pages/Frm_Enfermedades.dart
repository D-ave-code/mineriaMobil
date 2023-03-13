import 'package:flutter/material.dart';

class Frm_Enfermedades extends StatefulWidget {
  // id de la pagina
  static String id = '/paginas/conocenos';

  @override
  State<Frm_Enfermedades> createState() => _Frm_EnfermedadesState();
}

// -------------------------------------------------------------------
class _Frm_EnfermedadesState extends State<Frm_Enfermedades>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ---------------- ESCARLATINA ------------------
    Widget titleEscarlatina = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'ESCARLATINA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 138, 138, 128),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.child_care,
            color: Colors.red[500],
          ),
        ],
      ),
    );

    Widget textEscarlatina = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Text(
          "Es una infección bacteriana causada por la bacteria Streptococcus" 
          "pyogenes, que produce fiebre, dolor de garganta, erupción cutánea"
           "y una lengua roja y abultada. además de lo antes mencionado las erupciones cutáneas "
           "pueden comenzar en el cuello y el pecho y se extiende por el cuerpo, "
           "tambien llega a existir descamación de la piel. La escarlatina puede se tratarse con antibióticos. ",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.normal,
              )),
    );

        // ---------------- Herpes Labial ------------------
    Widget titleHerpesLabial = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'HERPES LABIAL',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 138, 138, 128),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.child_friendly,
            color: Colors.red[500],
          ),
        ],
      ),
    );

    Widget textHerpesLabial = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      // ignore: prefer_const_constructors
      child: Text(
          "Los síntomas del herpes labial pueden incluir ampollas dolorosas"
          " en los labios y alrededor de la boca, picazón, dolor o ardor antes "
          "de que aparezcan las ampollas, y costras que se forman después de que "
          "las ampollas se rompen.",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.normal,)),
    );

    // ---------------- Impétigo ------------------
    Widget titleImpetigo = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'IMPETIGO',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 138, 138, 128),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.face_retouching_natural,
            color: Colors.red[500],
          ),
        ],
      ),
    );

    Widget textImpetigo = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      // ignore: prefer_const_constructors
      child: Text(
          "Los síntomas del impétigo pueden incluir la aparición de "
          "ampollas en la piel, que se rompen y forman costras amarillentas "
          "o melosas, enrojecimiento e inflamación alrededor de las lesiones y picazón.",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.normal,)),
    );

    // ---------------- Kawasaki ------------------
    Widget titleKawasaki = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'KAWASAKI',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 138, 138, 128),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.remove_red_eye,
            color: Colors.red[500],
          ),
        ],
      ),
    );

    Widget textKawasaki = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      // ignore: prefer_const_constructors
      child: Text(
          "Los síntomas del Kawasaki pueden incluir fiebre alta que dura"
          " varios días, inflamación de los vasos sanguíneos, erupción cutánea,"
          " enrojecimiento de los ojos, labios agrietados y lengua roja e hinchada.",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.normal,)),
    );

    // ---------------- Mano - Pie - Boca ------------------
    Widget titleManoPieBoca = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'MANO - PIE - BOCA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 138, 138, 128),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.back_hand,
            color: Colors.red[500],
          ),
        ],
      ),
    );

    Widget textManoPieBoca = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      // ignore: prefer_const_constructors
      child: Text(
          "Los síntomas de la infección por el virus de mano-pie-boca pueden incluir"
          " fiebre, dolor de garganta, ampollas en las manos y los pies, y llagas "
          "dolorosas en la boca y la garganta.",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.normal,)),
    );

        // ---------------- Moluscos Contagiosos ------------------
    Widget titleMC = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'MOLUSCOS CONTAGIOSOS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 138, 138, 128),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.people,
            color: Colors.red[500],
          ),
        ],
      ),
    );

    Widget textMC = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      // ignore: prefer_const_constructors
      child: Text(
          "Los síntomas de la infección por moluscos contagiosos pueden "
          "incluir pequeñas protuberancias con un centro blanco que aparecen "
          "en la piel, enrojecimiento e inflamación alrededor de las protuberancias y picazón.",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.normal,)),
    );

    // ---------------- Candidiasis ------------------
    Widget titleCandi = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'CANDIDIASIS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 138, 138, 128),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.face_2,
            color: Colors.red[500],
          ),
        ],
      ),
    );

    Widget textCandi = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      // ignore: prefer_const_constructors
      child: Text(
          "los síntomas de la candidiasis pueden incluir manchas blancas en la lengua y en "
          "el interior de la boca, enrojecimiento e inflamación en la boca y dolor al tragar.",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.normal,)),
    );

        // ---------------- Roseola ------------------
    Widget titleRos = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'ROSEOLA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 138, 138, 128),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.face,
            color: Colors.red[500],
          ),
        ],
      ),
    );

    Widget textRos = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      // ignore: prefer_const_constructors
      child: Text(
          "Los síntomas de la roseola pueden incluir fiebre alta que dura "
          "varios días, seguida de una erupción cutánea rosada que aparece"
          " en el tronco, el cuello y las extremidades.",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.normal,)),
    );

            // ---------------- Rubeola ------------------
    Widget titleRub = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'RUBEOLA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 138, 138, 128),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.bloodtype_sharp,
            color: Colors.red[500],
          ),
        ],
      ),
    );

    Widget textRub = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      // ignore: prefer_const_constructors
      child: Text(
          "Los síntomas de la rubeola pueden incluir fiebre, tos, "
          "secreción nasal, erupción cutánea que comienza en la cabeza"
          " y se extiende al tronco y las extremidades, y manchas blancas en la boca.",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.normal,)),
    );

    // ---------------- Sarampion ------------------
    Widget titleSar = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'SARAMPION',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 138, 138, 128),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.health_and_safety,
            color: Colors.red[500],
          ),
        ],
      ),
    );

    Widget textSar = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      // ignore: prefer_const_constructors
      child: Text(
          "Los síntomas del sarampión pueden incluir fiebre, tos, "
          "secreción nasal, erupción cutánea que comienza en la cabeza "
          "y se extiende al tronco y las extremidades, manchas blancas en "
          "la boca y enrojecimiento e inflamación de los ojos.",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.normal,)),
    );

    // ---------------- Tinea ------------------
    Widget titleTC = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'TINEA CAPITIS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 138, 138, 128),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.healing_rounded,
            color: Colors.red[500],
          ),
        ],
      ),
    );

    Widget textTC = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      // ignore: prefer_const_constructors
      child: Text(
          "Los síntomas de la tiña de la cabeza pueden incluir áreas "
          "circulares de pérdida de cabello en el cuero cabelludo, "
          "piel escamosa, picazón y enrojecimiento.",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.normal,)),
    );

    // ---------------- Varicela ------------------
    Widget titleV = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'VARICELA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 138, 138, 128),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.vaccines,
            color: Colors.red[500],
          ),
        ],
      ),
    );

    Widget textV = Container(
      padding: const EdgeInsets.only(top: 20, left: 32, right: 32, bottom: 20),
      // ignore: prefer_const_constructors
      child: Text(
          "Es una infección viral común en la infancia que causa "
          "fiebre, sarpullido y ampollas en todo el cuerpo. "
          "Se previene con la vacuna contra la varicela.",
          style: TextStyle(
              fontSize: 18,
              fontFamily: 'Arial',
              fontWeight: FontWeight.normal,)),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Enfermedades',
              style: TextStyle(
                  wordSpacing: 6,
                  fontSize: 20.0,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255))),
          backgroundColor: Color.fromARGB(255, 249, 91, 64),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/enfermedades_2.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleEscarlatina,
            textEscarlatina,
            titleHerpesLabial,
            textHerpesLabial,
            titleImpetigo,
            textImpetigo,
            titleKawasaki,
            textKawasaki,
            titleManoPieBoca,
            textManoPieBoca,
            titleMC,
            textMC,
            titleCandi,
            textCandi,
            titleRos,
            textRos,
            titleRub,
            textRub,
            titleSar,
            textSar,
            titleTC,
            textTC,
            titleV,
            textV
          ],
        ),
      ),
    );
  }
}
