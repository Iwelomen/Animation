
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  @override
  State<SandBox> createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double _margin = 0;
  Color _color = Colors.blue;
  double _width = 200;
  double _opacity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => setState(
                  () => _margin = 50,
                ),
                child: Text('animate margin'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => setState(
                  () => _color = Colors.purple,
                ),
                child: Text('animate color'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => setState(
                  () => _width = 410,
                ),
                child: Text('animate width'),
              ),

              ElevatedButton(
                onPressed: () => setState(
                      () => _opacity = 0,
                ),
                child: Text('animate width'),
              ),

              AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 2),
                child: Text('Hide me'),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
