import 'package:canary_template/data/model/persentation/bloc/get_burung_tersedia/get_burung_tersedia_bloc.dart';
import 'package:canary_template/data/model/persentation/bloc/get_burung_tersedia/get_burung_tersedia_event.dart';
import 'package:flutter/material.dart';

class BuyerHomeScreen extends StatefulWidget {
  const BuyerHomeScreen({super.key});

  @override
  State<BuyerHomeScreen> createState() => _BuyerHomeScreenState();
}

class _BuyerHomeScreenState extends State<BuyerHomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<GetBurungTersediBloc>().add(GetAllBurungTersediaEvent());
  }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.white,

        actions: []
      ),
    );
  }
}
