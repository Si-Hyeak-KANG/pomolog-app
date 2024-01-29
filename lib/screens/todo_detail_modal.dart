import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:pomolog/screens/edit_todo_screen.dart';
import 'package:pomolog/screens/timer_screen.dart';

class TodoDetailModal extends StatelessWidget {
  const TodoDetailModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.check_box_outline_blank_rounded,
                          color: Color(0xffDF4F47),
                          size: 30,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EditTodoScreen(),
                                fullscreenDialog: true,
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.edit,
                            color: Color(0xffDF4F47),
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0xff8e8e8e),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
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
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    alignment: const FractionalOffset(0.4, 0.5),
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
                    percent: 0.4,
                    lineHeight: 30,
                    backgroundColor: Colors.black38,
                    progressColor: const Color(0xffDF4F47),
                    width: 360,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "(2/5)",
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
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: const Color(0xffDF4F47),
                  foregroundColor: Colors.white,
                ),
                child: const Text('집중 시작'),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TimerScreen(),
                    fullscreenDialog: false,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
