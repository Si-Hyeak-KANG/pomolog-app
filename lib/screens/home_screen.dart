import 'package:flutter/material.dart';
import 'package:pomolog/screens/todo_detail_modal.dart';
import 'package:pomolog/screens/write_todo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDF4F47),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(height: 90),

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
                      fullscreenDialog: true,
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
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (context, index) => const SizedBox(width: 40),
                itemBuilder: (context, index) {
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
                    margin: const EdgeInsets.symmetric(vertical: 10),
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
                              return const TodoDetailModal();
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
                              padding: EdgeInsets.all(10.0),
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
