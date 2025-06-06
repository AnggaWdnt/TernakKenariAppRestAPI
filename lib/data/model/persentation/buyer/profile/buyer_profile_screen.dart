import 'package:canary_template/data/model/persentation/buyer/profile/bloc/profile_buyer_bloc.dart';
import 'package:canary_template/data/model/persentation/buyer/profile/bloc/profile_buyer_event.dart';
import 'package:flutter/material.dart';

class BuyerProfileScreen extends StatefulWidget {
  const BuyerProfileScreen({super.key});

  @override
  State<BuyerProfileScreen> createState() => _BuyerProfileScreenState();
}

class _BuyerProfileScreenState extends State<BuyerProfileScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileBuyerBloc>().add(GetProfileBuyerEvent());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(title: Text("Profil Pembeli")),
    );
  }
}