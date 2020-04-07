import 'package:flutter/material.dart';

class AnimatedButton extends StatefulWidget {
  @override 
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> with SingleTickerProviderStateMixin {
  double _scale;
  AnimationController _controller;
  @override 
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value; 
    return GestureDetector( 
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      child: Transform.scale(
        scale: _scale,
       child:_animatedButtonUI),
    );
  }

  @override 
  void initState() {
    super.initState();
    _controller = AnimationController( 
      vsync: this,
      duration: Duration(milliseconds: 200),
      lowerBound: 0.0,
      upperBound: 0.1,
    ) ..addListener( () { setState((){ }) ;});
  }

  @override 
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTapDown(TapDownDetails details) {
     print("_onTapDown ${_controller.value}" );
    _controller.forward();
    setState(() {
      _scale = 1 - _controller.value;
    });
  }
  void _onTapUp(TapUpDetails details) {
     print("_onTapUp ${_controller.value}");
    _controller.reverse();
     setState(() {
      _scale = 1 - _controller.value;
    });
  }

   Widget get _animatedButtonUI => Container(
    height: 100,
    width:250,
    decoration: BoxDecoration( 
      borderRadius: BorderRadius.circular(100),
      boxShadow: [BoxShadow( color: Color(0x80000000),
      blurRadius: 30.0, offset:Offset(0.0,30.0))],
      gradient: LinearGradient( 
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [ Color(0xFFA7BFE8), Color(0xFF6190E8)]
      )
    ),
    child: Center( 
      child: Text("Tap!", 
      style: TextStyle( fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
    ),
  );

}