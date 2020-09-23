import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  Widget _buildSwitchListTile(
      String title, String subtitle, bool currentValue, Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(subtitle),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your filters"),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                    "Gluten Free",
                    "Only Gluten Free Meals",
                    _glutenFree,
                    (newValue) => setState(() {
                          _glutenFree = newValue;
                        })),
                _buildSwitchListTile(
                    "Vegan",
                    "Only Vegan Meals",
                    _vegan,
                    (newValue) => setState(() {
                          _vegan = newValue;
                        })),
                _buildSwitchListTile(
                    "Vegetarian",
                    "Only Vegetarian Meals",
                    _vegetarian,
                    (newValue) => setState(() {
                          _vegetarian = newValue;
                        })),
                _buildSwitchListTile(
                    "Lactose Free",
                    "Only Lactose Free Meals",
                    _lactoseFree,
                    (newValue) => setState(() {
                          _lactoseFree = newValue;
                        })),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
