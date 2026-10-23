import 'package:flutter/material.dart';

import 'package:if_guia/core/theme/colors.dart';


/// Tela inicial do aplicativo.
///
/// Os callbacks permitem configurar a navegação sem vincular esta tela
/// às implementações das outras funcionalidades.
/// Ações sem callback ficam desabilitadas.
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    this.aoAbrirQuiz,
    this.aoAbrirGravidade,
    this.aoAbrirMediador,
    this.aoAbrirGuia,
    this.aoAbrirDocumento,
    this.logoInstitucional,
  });

  final VoidCallback? aoAbrirQuiz;
  final VoidCallback? aoAbrirGravidade;
  final VoidCallback? aoAbrirMediador;
  final VoidCallback? aoAbrirGuia;
  final VoidCallback? aoAbrirDocumento;

  /// Permite fornecer a imagem oficial quando estiver disponível.
  final Widget? logoInstitucional;

  @override
  Widget build(BuildContext context) {
    final temaTexto = Theme.of(context).textTheme;

    // Scaffold fornece a estrutura principal da tela.
    return Scaffold(
      // Permite rolar o conteúdo em celulares menores e com fonte ampliada.
      body: SingleChildScrollView(
        // Organiza as seções verticalmente, ocupando a largura disponível.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Cabeçalho reutilizável com saudação e identificação do IFMA.
            StudentHeader(
              logoInstitucional: logoInstitucional,
            ),

            // Centraliza o conteúdo e limita a largura em tablets.
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 640),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 50, 20, 38),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Destaque que utiliza a mesma ação do primeiro atalho.
                      ActivityCard(
                        title: 'Posso ou Não Posso?',
                        description:
                            'Determine com base no seu conhecimento sobre o '
                            'Regimento estudantil quais atos são permitidos ou '
                            'não.',
                        onTap: aoAbrirQuiz,
                      ),

                      // SizedBox define o espaçamento entre os elementos.
                      const SizedBox(height: 18),

                      Text(
                        'Acessos rápidos',
                        style: temaTexto.bodyMedium,
                      ),
                      const SizedBox(height: 14),

                      // Calcula a largura disponível para os cartões.
                      LayoutBuilder(
                        builder: (context, restricoes) {
                          final larguraCartao = restricoes.maxWidth < 300
                              ? restricoes.maxWidth
                              : (restricoes.maxWidth - 20) / 2;

                          // Wrap distribui os cartões em duas colunas.
                          // Em telas estreitas, utiliza apenas uma coluna.
                          return Wrap(
                            spacing: 20,
                            runSpacing: 20,
                            children: [
                              SizedBox(
                                width: larguraCartao,
                                child: CartaoAcessoRapido(
                                  titulo: 'Posso ou não posso?',
                                  icone: Icons.quiz_outlined,
                                  aoTocar: aoAbrirQuiz,
                                ),
                              ),
                              SizedBox(
                                width: larguraCartao,
                                child: CartaoAcessoRapido(
                                  titulo: 'Qual é a gravidade?',
                                  icone: Icons.balance_outlined,
                                  aoTocar: aoAbrirGravidade,
                                ),
                              ),
                              SizedBox(
                                width: larguraCartao,
                                child: CartaoAcessoRapido(
                                  titulo: 'Gabinete do Mediador',
                                  icone: Icons.support_agent_outlined,
                                  aoTocar: aoAbrirMediador,
                                ),
                              ),
                              SizedBox(
                                width: larguraCartao,
                                child: CartaoAcessoRapido(
                                  titulo: 'Guia resumido',
                                  icone: Icons.menu_book_outlined,
                                  aoTocar: aoAbrirGuia,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Painel verde com os cantos superiores arredondados.
            Container(
              decoration: const BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(56),
                ),
              ),

              // Protege o conteúdo da área de navegação do celular.
              child: SafeArea(
                top: false,
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 640),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 36, 20, 64),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Documento completo:',
                            style: temaTexto.bodyMedium?.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                          const SizedBox(height: 16),

                          // Cartão reutilizável para acessar a fonte oficial.
                          OfficialDocumentCard(
                            onOpenDocument: aoAbrirDocumento,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}