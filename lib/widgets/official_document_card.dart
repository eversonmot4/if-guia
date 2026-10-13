import 'package:flutter/material.dart';

class OfficialDocumentCard extends StatelessWidget {
  const OfficialDocumentCard({
    super.key,
    this.onOpenDocument,
  });

  final VoidCallback? onOpenDocument;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF2E9742),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Expanded(
                child: Text(
                  'Quer conferir todos os detalhes?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.menu_book_outlined,
                color: Colors.white,
                size: 36,
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'FONTE OFICIAL',
            style: TextStyle(
              color: Colors.white,
              fontSize: 9,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 2),
          const Text(
            'Consulte a versão integral publicada pelo IFMA.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
            ),
          ),
          const SizedBox(height: 8),
          Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: onOpenDocument,
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        'Abrir documento original',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2E9742),
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.open_in_new,
                      color: Color(0xFF2E9742),
                      size: 16,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}