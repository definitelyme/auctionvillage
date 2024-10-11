part of dismissible_screen.dart;

/// A stateless widget to render ReactiveDismissibleScreen.
class ReactiveDismissibleScreen<Reactive extends BlocBase<ReactiveState>, ReactiveState> extends StatelessWidget {
  const ReactiveDismissibleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Screen Template for ReactiveDismissibleScreen'),
      ),
    );
  }
}
