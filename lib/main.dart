import 'dart:math' as math;

import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BrickRushApp());
}

class BrickRushApp extends StatelessWidget {
  const BrickRushApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brick Rush',
      theme: ThemeData.dark(),
      home: const MenuPage(),
    );
  }
}

// ============================================================
// MENU PRINCIPAL
// ============================================================

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF080B16),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'BRICK RUSH',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    color: Colors.cyanAccent,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Break the walls!',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
                const SizedBox(height: 55),

                _menuButton(context, 'JOGAR', Icons.play_arrow, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const LevelPage()),
                  );
                }),

                const SizedBox(height: 16),

                _menuButton(context, 'INTEGRANTES', Icons.person, () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      backgroundColor: const Color(0xFF10162B),
                      title: const Text(
                        'Integrante',
                        style: TextStyle(color: Colors.cyanAccent),
                      ),
                      content: const Text(
                        'Denver Ritter\n\n'
                        'Brick Rush\n'
                        'Projeto Integrador VI-A',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'FECHAR',
                            style: TextStyle(color: Colors.cyanAccent),
                          ),
                        ),
                      ],
                    ),
                  );
                }),

                const SizedBox(height: 16),

                _menuButton(context, 'CONFIGURAÇÕES', Icons.settings, () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      backgroundColor: const Color(0xFF10162B),
                      title: const Text(
                        'Configurações',
                        style: TextStyle(color: Colors.cyanAccent),
                      ),
                      content: const Text(
                        'Configurações do Brick Rush\n\n'
                        'Padrão de blocos: Variado\n'
                        'Níveis disponíveis: 5\n'
                        'Vidas por nível: 3',
                        style: TextStyle(color: Colors.white),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'FECHAR',
                            style: TextStyle(color: Colors.cyanAccent),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _menuButton(
    BuildContext context,
    String text,
    IconData icon,
    VoidCallback onPressed,
  ) {
    return SizedBox(
      width: double.infinity,
      height: 58,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(
          text,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF16213E),
          foregroundColor: Colors.cyanAccent,
          side: const BorderSide(color: Colors.cyanAccent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}

// ============================================================
// SELEÇÃO DE NÍVEL
// ============================================================

class LevelPage extends StatelessWidget {
  const LevelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF080B16),
      appBar: AppBar(
        title: const Text('SELEÇÃO DE NÍVEL'),
        backgroundColor: const Color(0xFF10162B),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: 5,
        itemBuilder: (context, index) {
          final level = index + 1;

          return ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => GamePage(level: level)),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF16213E),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.grid_view_rounded,
                  size: 42,
                  color: Colors.cyanAccent,
                ),
                const SizedBox(height: 10),
                Text(
                  'NÍVEL $level',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// ============================================================
// TELA DO JOGO
// ============================================================

class GamePage extends StatefulWidget {
  final int level;

  const GamePage({super.key, required this.level});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  late BrickRushGame game;

  late int currentLevel;

  int score = 0;
  int lives = 3;

  GameResult? result;

  @override
  void initState() {
    super.initState();

    currentLevel = widget.level;

    _createGame();
  }

  void _createGame() {
    game = BrickRushGame(
      level: currentLevel,
      onScore: _addScore,
      onLifeLost: _lifeLost,
      onVictory: _victory,
      onDefeat: _defeat,
    );
  }

  void _addScore() {
    if (!mounted) {
      return;
    }

    setState(() {
      score += 10;
    });
  }

  void _lifeLost() {
    if (!mounted) {
      return;
    }

    setState(() {
      lives--;
    });

    if (lives <= 0) {
      game.pauseEngine();

      setState(() {
        result = GameResult.defeat;
      });
    }
  }

  void _victory() {
    if (!mounted) {
      return;
    }

    game.pauseEngine();

    setState(() {
      result = GameResult.victory;
    });
  }

  void _defeat() {
    if (!mounted) {
      return;
    }

    game.pauseEngine();

    setState(() {
      result = GameResult.defeat;
    });
  }

  void _restartLevel() {
    setState(() {
      result = null;
      lives = 3;
      _createGame();
    });
  }

  void _nextLevel() {
    if (currentLevel >= 5) {
      setState(() {
        result = GameResult.finished;
      });
      return;
    }

    setState(() {
      currentLevel++;
      lives = 3;
      result = null;
      _createGame();
    });
  }

  void _goBackToLevels() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,

            onHorizontalDragUpdate: (details) {
              game.movePaddle(details.localPosition.dx);
            },

            onTapDown: (details) {
              game.movePaddle(details.localPosition.dx);
            },

            child: GameWidget(key: ValueKey(currentLevel), game: game),
          ),

          // ==================================================
          // INTERFACE SUPERIOR
          // ==================================================
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // NÍVEL
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: _infoBox('NÍVEL $currentLevel'),
                ),

                // PONTUAÇÃO
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: _infoBox('PONTOS $score'),
                ),

                // VIDAS
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: _infoBox('VIDAS $lives'),
                ),

                // PAUSA
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: IconButton(
                    icon: const Icon(
                      Icons.pause_circle,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed: result == null ? _pauseGame : null,
                  ),
                ),
              ],
            ),
          ),

          // ==================================================
          // RESULTADO
          // ==================================================
          if (result != null) _buildResultOverlay(),
        ],
      ),
    );
  }

  Widget _infoBox(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white24),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildResultOverlay() {
    String title;
    String message;
    IconData icon;

    if (result == GameResult.victory) {
      title = currentLevel == 5 ? 'PARABÉNS!' : 'VITÓRIA!';
      message = currentLevel == 5
          ? 'Você completou todos os níveis!'
          : 'Todos os blocos foram destruídos.';
      icon = Icons.emoji_events;
    } else if (result == GameResult.defeat) {
      title = 'DERROTA';
      message = 'Você perdeu todas as suas vidas.';
      icon = Icons.close;
    } else {
      title = 'BRICK RUSH CONCLUÍDO!';
      message = 'Você terminou os 5 níveis.';
      icon = Icons.workspace_premium;
    }

    return Container(
      color: Colors.black.withValues(alpha: 0.82),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(28),
            decoration: BoxDecoration(
              color: const Color(0xFF10162B),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.cyanAccent, width: 2),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, size: 70, color: Colors.cyanAccent),

                const SizedBox(height: 18),

                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 12),

                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                ),

                const SizedBox(height: 12),

                Text(
                  'Pontuação: $score',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.cyanAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 25),

                if (result == GameResult.victory && currentLevel < 5)
                  _resultButton(
                    'PRÓXIMO NÍVEL',
                    Icons.arrow_forward,
                    _nextLevel,
                  ),

                if (result == GameResult.victory && currentLevel == 5)
                  _resultButton('FINALIZAR', Icons.check, _goBackToLevels),

                if (result == GameResult.defeat)
                  _resultButton('REINICIAR', Icons.refresh, _restartLevel),

                const SizedBox(height: 10),

                _resultButton(
                  'SELEÇÃO DE NÍVEL',
                  Icons.grid_view,
                  _goBackToLevels,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _resultButton(String text, IconData icon, VoidCallback onPressed) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF16213E),
          foregroundColor: Colors.cyanAccent,
          side: const BorderSide(color: Colors.cyanAccent),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  // ==========================================================
  // PAUSA
  // ==========================================================

  void _pauseGame() {
    game.pauseEngine();

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          backgroundColor: const Color(0xFF10162B),
          title: const Text(
            'Jogo pausado',
            style: TextStyle(color: Colors.white),
          ),
          content: Text(
            'Nível $currentLevel\n'
            'Pontuação: $score\n'
            'Vidas: $lives',
            style: const TextStyle(color: Colors.white70),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                game.resumeEngine();
              },
              child: const Text(
                'CONTINUAR',
                style: TextStyle(color: Colors.cyanAccent),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: const Text(
                'SAIR',
                style: TextStyle(color: Colors.redAccent),
              ),
            ),
          ],
        );
      },
    );
  }
}

// ============================================================
// RESULTADOS
// ============================================================

enum GameResult { victory, defeat, finished }

// ============================================================
// JOGO BRICK RUSH
// ============================================================

class BrickRushGame extends FlameGame {
  final int level;

  final VoidCallback onScore;
  final VoidCallback onLifeLost;
  final VoidCallback onVictory;
  final VoidCallback onDefeat;

  BrickRushGame({
    required this.level,
    required this.onScore,
    required this.onLifeLost,
    required this.onVictory,
    required this.onDefeat,
  });

  final math.Random random = math.Random();

  double paddleX = 0;

  double ballX = 0;
  double ballY = 0;

  double velocityX = 180;
  double velocityY = -220;

  final List<Brick> bricks = [];

  bool finished = false;

  // ==========================================================
  // INICIALIZAÇÃO
  // ==========================================================

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    paddleX = size.x / 2;

    ballX = size.x / 2;
    ballY = size.y * 0.72;

    _createBricks();
  }

  // ==========================================================
  // CRIAÇÃO DOS BLOCOS
  // ==========================================================

  void _createBricks() {
    bricks.clear();

    const rows = 5;
    const columns = 7;

    final brickWidth = size.x / columns - 8;
    const brickHeight = 26.0;

    // Padrão para níveis ímpares
    final patternNormal = [
      [1, 1, 1, 1, 1, 1, 1],
      [1, 0, 1, 1, 1, 0, 1],
      [1, 1, 0, 1, 0, 1, 1],
      [1, 1, 1, 0, 1, 1, 1],
      [1, 1, 1, 1, 1, 1, 1],
    ];

    // Padrão para níveis pares
    final patternAlternative = [
      [0, 1, 1, 1, 1, 1, 0],
      [1, 1, 0, 1, 0, 1, 1],
      [1, 1, 1, 1, 1, 1, 1],
      [0, 1, 1, 1, 1, 1, 0],
      [1, 0, 1, 1, 1, 0, 1],
    ];

    final pattern = level % 2 == 0 ? patternAlternative : patternNormal;

    for (var row = 0; row < rows; row++) {
      for (var column = 0; column < columns; column++) {
        if (pattern[row][column] == 1) {
          bricks.add(
            Brick(
              x: column * (brickWidth + 8) + 4,
              y: 80 + row * 34,
              width: brickWidth,
              height: brickHeight,
              color: Colors
                  .primaries[(row + column + level) % Colors.primaries.length],
            ),
          );
        }
      }
    }
  }

  // ==========================================================
  // ATUALIZAÇÃO DO JOGO
  // ==========================================================

  @override
  void update(double dt) {
    super.update(dt);

    if (finished || size.x <= 0 || size.y <= 0) {
      return;
    }

    // Movimento da bola
    ballX += velocityX * dt;
    ballY += velocityY * dt;

    // Parede esquerda
    if (ballX <= 10) {
      ballX = 10;
      velocityX = velocityX.abs();
    }

    // Parede direita
    if (ballX >= size.x - 10) {
      ballX = size.x - 10;
      velocityX = -velocityX.abs();
    }

    // Teto
    if (ballY <= 55) {
      ballY = 55;
      velocityY = velocityY.abs();
    }

    // ========================================================
    // BASE
    // ========================================================

    final paddleY = size.y - 70;

    if (ballY >= paddleY - 10 &&
        ballY <= paddleY + 20 &&
        ballX >= paddleX - 55 &&
        ballX <= paddleX + 55 &&
        velocityY > 0) {
      ballY = paddleY - 10;

      velocityY = -velocityY.abs();

      final difference = ballX - paddleX;

      velocityX = difference * 4;

      if (velocityX > 450) {
        velocityX = 450;
      }

      if (velocityX < -450) {
        velocityX = -450;
      }
    }

    // ========================================================
    // BLOCOS
    // ========================================================

    for (final brick in bricks) {
      if (!brick.destroyed &&
          ballX >= brick.x &&
          ballX <= brick.x + brick.width &&
          ballY >= brick.y &&
          ballY <= brick.y + brick.height) {
        brick.destroyed = true;

        velocityY *= -1;

        onScore();

        break;
      }
    }

    // ========================================================
    // VITÓRIA
    // ========================================================

    if (bricks.isNotEmpty && bricks.every((brick) => brick.destroyed)) {
      finished = true;

      pauseEngine();

      onVictory();

      return;
    }

    // ========================================================
    // BOLA PERDIDA
    // ========================================================

    if (ballY > size.y) {
      onLifeLost();

      _resetBall();
    }
  }

  // ==========================================================
  // REINICIA A BOLA
  // ==========================================================

  void _resetBall() {
    ballX = size.x / 2;
    ballY = size.y * 0.72;

    velocityX = random.nextBool() ? 180 : -180;
    velocityY = -220;
  }

  // ==========================================================
  // MOVIMENTO DA BASE
  // ==========================================================

  void movePaddle(double x) {
    if (size.x <= 0) {
      return;
    }

    paddleX = x.clamp(55.0, size.x - 55.0);
  }

  // ==========================================================
  // DESENHO DO JOGO
  // ==========================================================

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    // Fundo
    final backgroundPaint = Paint()..color = const Color(0xFF080B16);

    canvas.drawRect(Rect.fromLTWH(0, 0, size.x, size.y), backgroundPaint);

    // Linha superior
    final borderPaint = Paint()
      ..color = Colors.cyanAccent
      ..strokeWidth = 2;

    canvas.drawLine(const Offset(0, 52), Offset(size.x, 52), borderPaint);

    // Bola
    final ballPaint = Paint()..color = Colors.cyanAccent;

    canvas.drawCircle(Offset(ballX, ballY), 9, ballPaint);

    // Base
    final paddlePaint = Paint()..color = Colors.white;

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(
          center: Offset(paddleX, size.y - 55),
          width: 110,
          height: 18,
        ),
        const Radius.circular(9),
      ),
      paddlePaint,
    );

    // Blocos
    for (final brick in bricks) {
      if (!brick.destroyed) {
        final paint = Paint()..color = brick.color;

        canvas.drawRRect(
          RRect.fromRectAndRadius(
            Rect.fromLTWH(brick.x, brick.y, brick.width, brick.height),
            const Radius.circular(5),
          ),
          paint,
        );
      }
    }
  }
}

// ============================================================
// MODELO DOS BLOCOS
// ============================================================

class Brick {
  final double x;
  final double y;
  final double width;
  final double height;
  final Color color;

  bool destroyed = false;

  Brick({
    required this.x,
    required this.y,
    required this.width,
    required this.height,
    required this.color,
  });
}
