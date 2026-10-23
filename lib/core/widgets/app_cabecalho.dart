import 'package:flutter/material.dart';

import '../theme/colors.dart';

/// Cabeçalho compartilhado com título, subtítulo e ação de voltar.
class CabecalhoPagina extends StatelessWidget {
  const CabecalhoPagina({
    super.key,
    required this.titulo,
    required this.subtitulo,
    this.aoVoltar,
  });

  final String titulo;
  final String subtitulo;
  final VoidCallback? aoVoltar;

  @override
  Widget build(BuildContext context) {
    final temaTexto = Theme.of(context).textTheme;

    return Material(
      color: AppColors.background, //white
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Row(
            children: [
              IconButton(
                onPressed: aoVoltar ?? () => Navigator.of(context).maybePop(),
                tooltip: 'Voltar',
                color: AppColors.textPrimary,
                icon: const Icon(Icons.arrow_back),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titulo,
                      style: temaTexto.headlineSmall,
                      semanticsLabel: titulo,
                    ),
                    const SizedBox(height: 4),
                    Text(subtitulo, style: temaTexto.bodyMedium),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}