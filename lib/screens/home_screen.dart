import 'package:flutter/material.dart';

import '../widgets/activity_card.dart';
import '../widgets/guide_bottom_bar.dart';
import '../widgets/official_document_card.dart';
import '../widgets/page_card.dart';
import '../widgets/student_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const StudentHeader(),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                // Ajusta o espaço antes do documento em telas altas.
                // Em telas menores, o conteúdo permite rolagem.
                final gap = (constraints.maxHeight - 681)
                    .clamp(32.0, double.infinity)
                    .toDouble();

                return SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(22, 46, 22, 38),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const ActivityCard(
                        title: 'Posso ou Não Posso?',
                        description: 'Descrição da atividade proposta',
                      ),
                      const SizedBox(height: 50),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: PageCard(
                                    title: 'Nome da Página',
                                  ),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: PageCard(
                                    title: 'Nome da Página',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: PageCard(
                                    title: 'Nome da Página',
                                  ),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: PageCard(
                                    title: 'Nome da Página',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: gap),
                      const OfficialDocumentCard(),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const GuideBottomBar(),
    );
  }
}