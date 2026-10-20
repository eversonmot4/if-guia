import 'package:flutter/material.dart';

class StudentHeader extends StatelessWidget {
  const StudentHeader({
    super.key,
    this.greeting = 'Olá, Estudante!',
  });

  final String greeting;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color(0xFF3E8320),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 18,
          ),
          child: Row(
            children:[
              Expanded(
                flex: 11,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        greeting,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight:FontWeight.w700,
                          height: 1.2,
                        ),
                      ),
                      const SizedBox(height: 3),
                      const Text(
                        'BOM TE VER POR AQUI',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 16),
            ],
          ),
        ),
      ),
    );
  }
}