import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../components/main_drawer.dart';
import '../models/settings.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var settings = Settings();

  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: onChanged,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configurações"),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Configurações',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _createSwitch(
                  'Sem Glúten',
                  'Só exibe refeições sem glúten',
                  settings.isGlutenFree,
                  (value) => setState(
                    (() => settings.isGlutenFree = value),
                  ),
                ),
                _createSwitch(
                  'Sem Lactose',
                  'Só exibe refeições sem lactose',
                  settings.isLactoseFree,
                  (value) => setState(
                    (() => settings.isLactoseFree = value),
                  ),
                ),
                _createSwitch(
                    'Vegana',
                    'Só exibe refeições veganas',
                    settings.isVegan,
                    (value) => setState(
                          (() => settings.isVegan = value),
                        )),
                _createSwitch(
                    'Vegetariana',
                    'Só exibe refeições Vegetariana',
                    settings.isVegetarian,
                    (value) => setState(
                          (() => settings.isVegetarian = value),
                        ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}