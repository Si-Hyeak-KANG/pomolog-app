import 'package:flutter/material.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDF4F47),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffDF4F47),
        foregroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Focus Time",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // 타이머
          Container(
            height: 227,
            width: 227,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                style: BorderStyle.solid,
                width: 3,
              ),
            ),
            alignment: Alignment.center,
            child: const Text(
              "25:00",
              style: TextStyle(
                color: Colors.white,
                fontSize: 64,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          // 타이머 조작 버튼
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 40,
              ),
              Icon(
                Icons.play_circle_rounded,
                size: 72,
                color: Colors.white,
              ),
              Icon(
                Icons.skip_next_rounded,
                size: 48,
                color: Colors.white,
              ),
            ],
          ),
          // 모드 (짧은 집중, 짧은 휴식, 긴 집중, 긴 휴식)

          SizedBox(
            height: 100,
            width: 150,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 15),
              itemCount: 4,
              itemBuilder: (context, index) {
                return const Icon(
                  Icons.circle_outlined,
                  size: 25,
                  color: Colors.white,
                );
              },
            ),
          ),

          Expanded(
            child: Container(
              height: 80,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    size: 40,
                    Icons.arrow_drop_up_outlined,
                  ),
                  Text(
                    'Pomodors',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "4",
                    style: TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
