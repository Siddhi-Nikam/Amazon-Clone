import 'package:e_commerce_amezon_clone/blocs/homBloc/homeBloc.dart';
import 'package:e_commerce_amezon_clone/blocs/homBloc/homeEvent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/homBloc/homeState.dart';
import 'BottomnavWidgets.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        return Container(
          color: Colors.white,
          child: Scaffold(
            bottomNavigationBar: Container(
              width: double.infinity,
              height: 58,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(20.0),
              ),

              child: BottomNavigationBar(
                currentIndex: state.index,
                selectedItemColor: Colors.orange,
                
                onTap: (value) {
                  context.read<BottomNavBloc>().add(TriggerBottomNav(value));
                },
                items: bottomTabs,
              ),
            ),

            body: buildpage(state.index),
          ),
        );
      },
    );
  }
}
