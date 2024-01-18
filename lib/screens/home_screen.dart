import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pomolog/screens/write_todo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDF4F47),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            //const SizedBox(height: 0),

            // 'TODO' 타이틀
            const Center(
              child: Text(
                "TODO",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 80,
                    fontWeight: FontWeight.w700),
              ),
            ),

            const Center(
              child: Text(
                "오늘 흭득한 뽀모도로 : 5",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),

            const SizedBox(height: 20),
            // 'TODO' 작성 아이콘

            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WriteTodoScreen(),
                      fullscreenDialog: false,
                    ),
                  );
                },
                child: const Icon(
                  Icons.add_circle,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 'TODO' 목록
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          offset: const Offset(3, 3),
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ],
                    ),
                    height: 80,
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          minimumSize: const Size(290, 100),
                          maximumSize: const Size(300, 100),
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: -5),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onPressed: () {
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 400,
                                color: Colors.white,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .check_box_outline_blank_rounded,
                                                    color: Color(0xffDF4F47),
                                                    size: 30,
                                                  ),
                                                  Icon(
                                                    Icons.edit,
                                                    color: Color(0xffDF4F47),
                                                    size: 30,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            Container(
                                              decoration: const BoxDecoration(
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 20),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 18.0),
                                              child: Text(
                                                "오늘의 할 일!!!",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 40),
                                        Column(
                                          children: [
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 2.0),
                                              alignment:
                                                  const FractionalOffset(0, 1),
                                              child: FractionallySizedBox(
                                                  child: Image.asset(
                                                '/Users/james/dev/app/pomolog/assets/icons/tomato.png',
                                                width: 30,
                                                height: 30,
                                                fit: BoxFit.contain,
                                              )),
                                            ),
                                            LinearPercentIndicator(
                                              padding: EdgeInsets.zero,
                                              percent: 0,
                                              lineHeight: 30,
                                              backgroundColor: Colors.black38,
                                              progressColor:
                                                  const Color(0xffDF4F47),
                                              width: 360,
                                            ),
                                            const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "(0/5)",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                        const SizedBox(height: 50),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            minimumSize: const Size(50, 50),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                            ),
                                            backgroundColor:
                                                const Color(0xffDF4F47),
                                            foregroundColor: Colors.white,
                                          ),
                                          child: const Text('집중 시작'),
                                          onPressed: () =>
                                              Navigator.pop(context),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: const Row(
                          children: [
                            Icon(
                              Icons.check_box_outline_blank_rounded,
                              color: Color(0xffDF4F47),
                              size: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Text(
                                "오늘의 할 일!",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
