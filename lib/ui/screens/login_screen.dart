import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
                children: [
                            Stack(children: [    Column(
                                children: [
                                            Container(
                                width: 322.9990539550781,
                                height: 379.517333984375,
                                ),
                        Image.asset(
                                    "assets/Vector.png",
                                    width: 18.03617286682129,
                                    height: 18.03617286682129,
                                    ),
                        Image.asset(
                                    "assets/Vector.png",
                                    width: 18.03617286682129,
                                    height: 18.03617286682129,
                                    ),
                        Image.asset(
                                    "assets/Vector.png",
                                    width: 24.824031829833984,
                                    height: 45.93238067626953,
                                    ),
                        Image.asset(
                                    "assets/Vector.png",
                                    width: 87.92257690429688,
                                    height: 45.858985900878906,
                                    )
                                ],
                            )],),
        Stack(children: [    Column(
                                children: [
                                            Container(
                                width: 322.9990539550781,
                                height: 379.517333984375,
                                ),
                        Image.asset(
                                    "assets/Vector.png",
                                    width: 18.03617286682129,
                                    height: 18.03617286682129,
                                    ),
                        Image.asset(
                                    "assets/Vector.png",
                                    width: 18.03617286682129,
                                    height: 18.03617286682129,
                                    ),
                        Image.asset(
                                    "assets/Vector.png",
                                    width: 24.824031829833984,
                                    height: 45.93238067626953,
                                    ),
                        Image.asset(
                                    "assets/Vector.png",
                                    width: 87.92257690429688,
                                    height: 45.858985900878906,
                                    )
                                ],
                            )],),
        Column(
                        children: [
                                    Stack(children: [],),
                Stack(children: [    Column(
                                        children: [
                                                    Text(
                                            "9:41",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeith.w600,
                                            )
                                        )
                                        ],
                                    )],),
                Stack(children: [    Column(
                                        children: [
                                                    Image.asset(
                                            "assets/Outline.png",
                                            width: 26,
                                            height: 13.519999504089355,
                                            ),
                                Image.asset(
                                            "assets/Battery End.png",
                                            width: 1.4572421312332153,
                                            height: 4.389158248901367,
                                            ),
                                Image.asset(
                                            "assets/Fill.png",
                                            width: 15.59999942779541,
                                            height: 9.359999656677246,
                                            )
                                        ],
                                    ),
                        Container(
                                    width: 17.680002212524414,
                                    height: 12.307403564453125,
                                    child: [
                                                Container(
                                        width: 17.680002212524414,
                                        height: 5.604897499084473,
                                        ),
                                Container(
                                        width: 11.517431259155273,
                                        height: 4.294132709503174,
                                        ),
                                Container(
                                        width: 5.355608940124512,
                                        height: 3.9874043464660645,
                                        )
                                    ],
                                ),
                        Image.asset(
                                    "assets/Icon / Mobile Signal.png",
                                    width: 18.719999313354492,
                                    height: 12.479999542236328,
                                    )],)
                        ],
                    ),
        Column(
                        children: [
                                    Container(
                            width: 139.36000061035156,
                            height: 5.199999809265137,
                            decoration:     BoxDecoration(
                        borderRadius: BorderRadius.circular(104), 
                        color: Colors.black)
                            )
                        ],
                    ),
        Text(
                    "평생 지켜질 공부습관
        평생 친구와 함께",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeith.w600,
                    )
                ),
        Container(
                    width: 310,
                    height: 52,
                    decoration:     BoxDecoration(
                borderRadius: BorderRadius.circular(4), 
                color: Colors.black)
                    ),
        Container(
                    width: 310,
                    height: 52,
                    decoration:     BoxDecoration(
                borderRadius: BorderRadius.circular(4), 
                color: Color(0xfffddc3f))
                    ),
        Container(
                    width: 310,
                    height: 52,
                    decoration:     BoxDecoration(
                borderRadius: BorderRadius.circular(4), 
                color: Color(0xff1877f2))
                    ),
        Text(
                    "Apple로 로그인",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeith.w600,
                    )
                ),
        Column(
                        children: [
                                    Column(
                                children: [
                                            Container(
                                width: 15.723548889160156,
                                height: 18.666955947875977,
                                )
                                ],
                            )
                        ],
                    ),
        Text(
                    "카카오로 로그인",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeith.w600,
                    )
                ),
        Text(
                    "페이스북으로 로그인",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeith.w600,
                    )
                ),
        Column(
                        children: [
                                    Container(
                        width: 18.9453125,
                        height: 17.499996185302734,
                        )
                        ],
                    ),
        Container(
                    width: 362,
                    height: 91,
                    decoration:     BoxDecoration(
                borderRadius: BorderRadius.circular(45.5))
                    ),
        Image.asset(
                    "assets/Vector.png",
                    width: 20,
                    height: 20,
                    ),
        Text(
                    "TYMZ",
                    style: TextStyle(
                        fontSize: 35.32051467895508,
                        fontWeight: FontWeith.w800,
                    )
                )
                ],
            ),
    );
  }
}
