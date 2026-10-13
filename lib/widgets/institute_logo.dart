import 'package:flutter/material.dart';

class InstituteLogo extends StatelessWidget {
  const InstituteLogo({super.key});

  // Cada linha representa uma linha da marca.
  // true desenha uma célula; false deixa o espaço vazio.
  static const _cells = <List<bool>>[
    [true, true, true],
    [true, true, false],
    [true, true, true],
    [true, true, false],
  ];

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Instituto Federal do Maranhão, Campus Caxias',
      image: true,
      child: ExcludeSemantics(
        child: Container(
          width: 171,
          height: 60,
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              children: [
                Column(
                  children: [
                    for (var row = 0; row < _cells.length; row++)
                      Row(
                        children: [
                          for (
                            var col = 0;
                            col < _cells[row].length;
                            col++
                          )
                            Container(
                              width: 9,
                              height: 9,
                              margin: const EdgeInsets.all(0.6),
                              decoration: BoxDecoration(
                                color: !_cells[row][col]
                                    ? Colors.transparent
                                    : row == 0 && col == 0
                                        ? const Color(0xFFD52B30)
                                        : const Color(0xFF38A34A),
                                borderRadius: row == 0 && col == 0
                                    ? BorderRadius.circular(5)
                                    : BorderRadius.zero,
                              ),
                            ),
                        ],
                      ),
                  ],
                ),
                const SizedBox(width: 5),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'INSTITUTO FEDERAL',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        height: 1.1,
                      ),
                    ),
                    Text(
                      'Maranhão\nCampus Caxias',
                      style: TextStyle(
                        color: Color(0xFF555555),
                        fontSize: 9,
                        height: 1.1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}