import 'package:flutter/material.dart';

class HowDoIUseACanvasToDrawPaint extends StatefulWidget {
  const HowDoIUseACanvasToDrawPaint({Key? key}) : super(key: key);

  @override
  _HowDoIUseACanvasToDrawPaintState createState() => _HowDoIUseACanvasToDrawPaintState();
}

class _HowDoIUseACanvasToDrawPaintState extends State<HowDoIUseACanvasToDrawPaint> {
  List<Offset?> _points = <Offset>[];
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (DragUpdateDetails details) {
        setState(() {
          RenderBox? referenceBox = context.findRenderObject() as RenderBox;
          Offset localPosition = referenceBox.globalToLocal(details.globalPosition);
          _points = List.from(_points)..add(localPosition);
        });
      },
      onPanEnd: (DragEndDetails details) => _points.add(null),
      child: CustomPaint(
        painter: SignaturePainter(_points),
        size: Size.infinite,
      ),
    );
  }
}

class SignaturePainter extends CustomPainter {
  SignaturePainter(this.points);
  final List<Offset?> points;

  void paint(Canvas canvas, Size size) {
    var paint = Paint()
        ..color = Colors.white
        ..strokeCap = StrokeCap.round
        ..strokeWidth = 5.0;
    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null)
        canvas.drawLine(points[i]!, points[i + 1]!, paint);
    }
  }

  bool shouldRepaint(SignaturePainter other) => other.points != points;
}