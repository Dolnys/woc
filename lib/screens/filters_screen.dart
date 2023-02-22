// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:woc/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _sweet = false;
  bool _sour = false;
  bool _dry = false;
  bool _gentle = false;
  bool _medium = false;
  bool _strong = false;
  Widget _buildSwitchListTile(
      String title, bool currentValue, void Function(bool) uptadeValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      onChanged: uptadeValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        title: const Text('Filters'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(21),
            child: Center(
              child: const Text(
                'Adjust your drink selection',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(21),
            child: const Text(
              'By flavour profile',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w100,
                color: Colors.blueGrey,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitchListTile(
                  'Sweet',
                  _sweet,
                  (newValue) {
                    setState(
                      () {
                        _sweet = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Sour',
                  _sour,
                  (newValue) {
                    setState(
                      () {
                        _sour = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Dry',
                  _dry,
                  (newValue) {
                    setState(
                      () {
                        _dry = newValue;
                      },
                    );
                  },
                ),
                Container(
                  padding: const EdgeInsets.all(21),
                  child: Center(
                    child: const Text(
                      'By power',
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w100,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
                _buildSwitchListTile(
                  'Gentle',
                  _gentle,
                  (newValue) {
                    setState(
                      () {
                        _gentle = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Medium',
                  _medium,
                  (newValue) {
                    setState(
                      () {
                        _medium = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  'Strong',
                  _strong,
                  (newValue) {
                    setState(
                      () {
                        _strong = newValue;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
