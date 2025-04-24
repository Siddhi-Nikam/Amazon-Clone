abstract class BottomNavEvent {
  const BottomNavEvent();
}

class TriggerBottomNav extends BottomNavEvent {
  final int index;

  const TriggerBottomNav(this.index) : super();
}
