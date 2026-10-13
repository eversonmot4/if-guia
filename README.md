# IF Guia

Aplicativo de orientação discente do IFMA — Campus Caxias,
desenvolvido em Flutter na disciplina de Programação de
Dispositivos Móveis.

## Sobre esta versão

Implementação da tela inicial baseada no projeto de interface do Figma.

A tela contém:
- Cabeçalho com saudação e identificação do instituto.
- Cartão da atividade “Posso ou Não Posso?”.
- Quatro cartões de páginas.
- Bloco do documento oficial.
- Navegação inferior.

Nesta etapa, os botões representam o layout. A navegação entre
telas e a abertura do documento ainda não estão implementadas.

## Pré-requisitos

- Git.
- Flutter instalado e disponível no terminal.
- Dart compatível com o projeto: >=3.13.5 <4.0.0.
- Android SDK com Command-line Tools e Platform-Tools instalados.
- Celular Android com depuração USB ativada.
- Cabo USB que permita transmissão de dados.

O Android Studio pode ser utilizado para instalar e configurar
o Android SDK. Não é necessário um emulador para usar o celular.

Verifique a configuração:

```bash
flutter --version
flutter doctor
```

Se houver licenças Android pendentes:

```bash
flutter doctor --android-licenses
```

Leia os termos e aceite caso concorde.

Para executar no Android, a seção Android toolchain deve estar
configurada. Chrome e ferramentas de desktop Linux não são
necessários para esse teste.

## Baixar o projeto

```bash
git clone https://github.com/eversonmot4/if-guia.git
cd if-guia
flutter pub get
```

Se já tiver o projeto, abra o terminal na pasta que contém
pubspec.yaml e execute `flutter pub get`.

## Executar no celular Android

1. Conecte o celular por USB.
2. Mantenha o celular desbloqueado.
3. Aceite a autorização de depuração USB no aparelho.
4. Liste os dispositivos:

```bash
flutter devices
```

Substitua ID_DO_CELULAR pelo identificador exibido:

```bash
flutter run -d ID_DO_CELULAR
```

A primeira compilação pode demorar enquanto baixa as dependências.

Durante a execução, use no terminal:
- `r`: atualiza alterações com hot reload.
- `R`: reinicia o aplicativo com hot restart.
- `q`: encerra a execução.

## Verificar o código

Execute na raiz do projeto:

```bash
dart format lib
flutter analyze
```

Confira também a aparência da tela no celular e a rolagem
quando o conteúdo ultrapassar a altura disponível.

## Organização dos arquivos

```text
lib/
├── main.dart
├── screens/
│   └── home_screen.dart
└── widgets/
    ├── student_header.dart
    ├── institute_logo.dart
    ├── activity_card.dart
    ├── page_card.dart
    ├── official_document_card.dart
    └── guide_bottom_bar.dart
```

- `main.dart`: inicialização e tema do aplicativo.
- `screens/`: composição das telas.
- `widgets/`: componentes reutilizáveis da interface.