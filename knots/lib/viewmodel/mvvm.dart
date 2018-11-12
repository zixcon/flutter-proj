import 'package:flutter/widgets.dart';

abstract class ViewModel extends ChangeNotifier {}

abstract class View<T extends ViewModel> extends StatefulWidget {
  
  View({ Key key, this.viewModel }) : super(key: key);

  T viewModel;

  T getViewModel() => this.viewModel;

  Widget build(BuildContext context);

  @override
  State<StatefulWidget> createState() => _ViewState();
}

class _ViewState extends State<View> {

  _ViewState();

  void _invalidate() => setState((){});

  void _addListener() =>
    widget.viewModel.addListener(_invalidate);

  void _removeListener(View widget) =>
    widget.viewModel.removeListener(_invalidate);

  @override
  void initState() {
    super.initState();
    _addListener();
  }

  @override
  void didUpdateWidget(View oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.viewModel != widget.viewModel) {
      _removeListener(oldWidget);
      _addListener();
    }
  }

  @override
  void dispose() {
    _removeListener(widget);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context);
}