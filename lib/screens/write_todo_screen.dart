import 'package:flutter/material.dart';

class WriteTodoScreen extends StatelessWidget {
  const WriteTodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDF4F47),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffDF4F47),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //const SizedBox(height: 50),
            // 할 일 INPUT
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white, // 원하는 색상으로 변경
                  ),
                ),
                labelStyle: TextStyle(color: Colors.white),
                prefixStyle: TextStyle(color: Colors.white),
                labelText: '할 일을 입력해주세요.',
              ),
            ),

            const SizedBox(height: 60),

            //  목표 뽀모도로 설정
            const Text(
              "목표 뽀모도로",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 60,
              child: Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 20),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(120),
                      ),
                      child: Center(
                          child: Text(
                        '${index + 1}',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Color(0xffDF4F47),
                        ),
                      )),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 50),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  size: 24,
                  color: Color(0xffDF4F47),
                ),
                label: const Text(
                  "등록",
                  style: TextStyle(
                      color: Color(0xffDF4F47),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
