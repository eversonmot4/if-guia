import 'package:flutter/material.dart';

class PageCard extends StatelessWidget {
  const PageCard({
    super.key,
    required this.title,
    this.icon,
    this.onTap,
  });

  final String title;
  final IconData? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Material(
        color: const Color(0xFFF0F0F0),
        borderRadius: BorderRadius.circular(5),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFA5A5A5),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: icon == null
                      ? null
                      : Icon(
                          icon,
                          color: Colors.white,
                          size: 26,
                        ),
                ),
                const SizedBox(height: 14),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(
                      Icons.chevron_right,
                      size: 20,
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