import 'package:flutter/material.dart';
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
            const SizedBox(height: 60),

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
                "오늘의 뽀모도로 : 5",
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
                                color: Colors.white,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const Text("오늘의 할 일!"),
                                      ElevatedButton(
                                        child: const Text('Focus ON!'),
                                        onPressed: () => Navigator.pop(context),
                                      )
                                    ],
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
