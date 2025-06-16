// ignore_for_file: sized_box_for_whitespace, deprecated_member_use

import '../../../../core/utils/exports.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        CustomPaint(
          size: const Size(double.infinity, 60),
          painter: BottomNavPainter(),
          child: Container(
            height: 60,
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: onTap,
              backgroundColor: Colors.transparent,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              type: BottomNavigationBarType.fixed,
              elevation: 0,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedFontSize: 12,
              unselectedFontSize: 12,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home),
                  label: 'Inicio',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.policy_outlined),
                  activeIcon: Icon(Icons.policy),
                  label: 'Pólizas',
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(height: 30),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat_outlined),
                  activeIcon: Icon(Icons.chat),
                  label: 'Chat',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz),
                  activeIcon: Icon(Icons.more_horiz),
                  label: 'Más',
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -25,
          child: CustomFloatingButton(
            onPressed: () => onTap(2),
          ),
        ),
      ],
    );
  }
}

class BottomNavPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Paint borderPaint = Paint()
      ..color = Colors.grey.withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.35, 0);

    // Curva suave desde la izquierda con transición mejorada
    path.cubicTo(
      size.width * 0.38, 0, // Primer punto de control más cercano
      size.width * 0.40, 20, // Segundo punto de control
      size.width * 0.45, 35, // Punto final
    );

    // Curva central inferior con mejor continuidad
    path.cubicTo(
      size.width * 0.48, 42, // Primer punto de control
      size.width * 0.52, 42, // Segundo punto de control
      size.width * 0.55, 35, // Punto final
    );

    // Curva suave hacia la derecha con transición mejorada
    path.cubicTo(
      size.width * 0.60, 20, // Primer punto de control
      size.width * 0.62, 0, // Segundo punto de control más cercano
      size.width * 0.65, 0, // Punto final
    );

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    // Dibuja el fondo blanco
    canvas.drawPath(path, paint);
    // Dibuja el borde gris
    canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
