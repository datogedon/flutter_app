import 'package:app/presentation/widgets/options_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text("HomePage"),),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Center(child:Text("Selecciona una opcion")),
          OptionsWidget(
            onChanged: (OptionsObject value) {
              print(value);
              _controller.text = value.value;
            },
          ),
          TextFormField(
            controller: _controller,
          )
        ],
      ),
    );
  }
}
