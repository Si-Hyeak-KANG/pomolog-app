import 'package:flutter/material.dart';

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
            const SizedBox(height: 50),

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
            const Center(
              child: Icon(
                Icons.add_circle,
                color: Colors.white,
                size: 50,
              ),
            ),

            const SizedBox(height: 30),

            // 'TODO' 목록
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
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
                    child: const Padding(
                      padding: EdgeInsets.all(13),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_box_outline_blank_rounded,
                            color: Color(0xffDF4F47),
                            size: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text("오늘의 할 일입니다."),
                          ),
                        ],
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
