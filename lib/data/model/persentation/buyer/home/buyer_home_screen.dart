import 'package:canary_template/data/model/persentation/bloc/get_burung_tersedia/get_burung_tersedia_bloc.dart';
import 'package:canary_template/data/model/persentation/bloc/get_burung_tersedia/get_burung_tersedia_event.dart';
import 'package:flutter/material.dart';

class BuyerHomeScreen extends StatefulWidget {
  const BuyerHomeScreen({super.key});

  @override
void initState() {
  super.initState ();
  context.read<GetBurungTersediBloc>().add(GetAllBurungTersediaEvent());
}

}