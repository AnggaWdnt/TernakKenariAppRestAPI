class ProfileBuyerBloc extends Bloc<ProfileBuyerEvent, ProfileBuyerState> {
  final ProfileBuyerRepository profileBuyerRepository;
  ProfileBuyerBloc({required this.profileBuyerRepository})
    : super(ProfileBuyerInitial()) {
    on<AddProfileBuyerEvent>(_addProfileBuyer);
    on<GetProfileBuyerEvent>(_getProfileBuyer);
  }


}