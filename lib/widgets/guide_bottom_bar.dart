import 'package:flutter/material.dart';

class GuideBottomBar extends StatelessWidget {
  const GuideBottomBar({
    super.key,
    this.onSelected,
  });

  final ValueChanged<int>? onSelected;

  static const _labels = [
    'Início',
    'Regras',
    'Quiz',
    'Canais',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x10000000),
            blurRadius: 15,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Material(
          color: Colors.white,
          child: Row(
            children: [
              for (var index = 0; index < _labels.length; index++)
                Expanded(
                  child: Semantics(
                    button: true,
                    selected: index == 0,
                    child: InkWell(
                      onTap: onSelected == null
                          ? null
                          : () => onSelected!(index),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 42,
                              height: 28,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF0F0F0),
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              _labels[index],
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}