part of country_picker_screen.dart;

/// A stateless widget to render CountryPickerScreen.
class CountryPickerScreen extends StatefulWidget {
  final Country? initial;
  final KtList<Country> countries;

  const CountryPickerScreen(this.initial, {Key? key, this.countries = const KtList.empty()}) : super(key: key);

  @override
  State<CountryPickerScreen> createState() => _CountryPickerScreenState();
}

class _CountryPickerScreenState extends State<CountryPickerScreen> {
  ScrollController? _scrollController;
  final TextEditingController _textEditingController = TextEditingController();
  late List<Country> _countries;
  var diff = 0.0;

  var posSelected = 0;
  var height = 0.0;
  late double _containerHeight;
  late double _scrollerHeight;

  String? _text;
  String? _oldText;
  final _itemSizeHeight = 50.0;
  var _offsetContainer = 0.0;

  final _alphabet = List.generate(26, (i) => String.fromCharCode('A'.codeUnitAt(0) + i));

  @override
  void initState() {
    super.initState();
    _countries = widget.countries.sortedWith((a, b) => a.name.getOrEmpty.compareTo(b.name.getOrEmpty)).asList();
    _scrollController = ScrollController();
    _scrollController!.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      backgroundColor: App.resolveColor(Palette.neutralF4, dark: Palette.backgroundColorDark),
      adaptiveToolbar: AdaptiveToolbar(
        title: 'Choose a Country',
        backgroundColor: App.platform.material(App.resolveColor(Colors.white, dark: Palette.backgroundColorDark.shade300)),
        centerTitle: false,
        implyLeading: true,
        showMaterialCustomLeading: false,
        showCupertinoCustomLeading: false,
        cupertinoImplyLeading: true,
        overlayStyle: App.customSystemOverlay(ctx: context, android: Brightness.dark),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          diff = height - constraints.biggest.height;
          _scrollerHeight = (constraints.biggest.height) / _alphabet.length;
          _containerHeight = (constraints.biggest.height);
          //
          return SafeArea(
            child: Stack(
              children: [
                CustomScrollView(
                  controller: _scrollController,
                  physics: Utils.physics,
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: AdaptiveText('SEARCH'),
                          ),
                          //
                          AdaptiveTextFormInput(
                            filled: true,
                            autoCorrect: false,
                            controller: _textEditingController,
                            hintText: 'Start typing...',
                            hintStyle: const TextStyle(fontStyle: FontStyle.italic),
                            autoDisposeController: false,
                            fillColor: App.resolveColor(Palette.cardColorLight, dark: Palette.backgroundColorDark.shade400),
                            onChanged: _filterElements,
                            borderRadius: BorderRadius.zero,
                            cupertinoData: (d) => d.copyWith(
                              decoration: AdaptiveTextFormInput.defaultDecoration(
                                borderRadius: BorderRadius.zero,
                                borderWidth: 2,
                                borderColor: Colors.transparent,
                              ),
                            ),
                            border: const OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.zero),
                            enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.zero),
                            focusBorder: const OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.zero),
                          ),
                          //
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: AdaptiveText('LAST SELECTION'),
                          ),
                          //
                          Material(
                            color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark),
                            child: AdaptiveListTile(
                              dense: true,
                              material: true,
                              enableFeedback: true,
                              leading: _flagSVG(widget.initial, width: 32),
                              title: AdaptiveText(widget.initial!.name.getOrEmpty, fontSize: 16.sp),
                              trailing: const Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Icon(Icons.check, color: Colors.green),
                              ),
                            ),
                          ),
                          //
                          const SizedBox(height: 15),
                        ],
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => getListCountry(_countries.elementAt(index)),
                        childCount: _countries.length,
                      ),
                    ),
                  ],
                ),
                //
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onVerticalDragUpdate: _onVerticalDragUpdate,
                    onVerticalDragStart: _onVerticalDragStart,
                    child: Container(
                      height: 20.0 * 30,
                      color: Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(_alphabet.length, (index) => _getAlphabetItem(index)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _sendDataBack(BuildContext c, Country selected) => Navigator.pop(context, selected);

  Widget getListCountry(Country it) {
    return Material(
      color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark),
      child: AdaptiveListTile(
        dense: true,
        material: true,
        enableFeedback: true,
        leading: _flagSVG(it, width: 30),
        onTap: () => _sendDataBack(context, it),
        title: AdaptiveText(it.name.getOrEmpty, fontSize: 16.sp),
      ),
    );
  }

  void _scrollListener() {
    var scrollPosition = (_scrollController!.position.pixels / _itemSizeHeight).round();
    if (scrollPosition < _countries.length) {
      try {
        var countryName = _countries.elementAt(scrollPosition).name.getOrEmpty;
        setState(() {
          posSelected = countryName[0].toUpperCase().codeUnitAt(0) - 'A'.codeUnitAt(0);
        });
      } catch (_) {}
    }

    if ((_scrollController!.offset) >= (_scrollController!.position.maxScrollExtent)) {}
    if (_scrollController!.offset <= _scrollController!.position.minScrollExtent && !_scrollController!.position.outOfRange) {}
  }

  void _onVerticalDragUpdate(DragUpdateDetails details) {
    setState(() {
      if ((_offsetContainer + details.delta.dy) >= 0 && (_offsetContainer + details.delta.dy) <= (_containerHeight - _scrollerHeight)) {
        _offsetContainer += details.delta.dy;
        posSelected = ((_offsetContainer / _scrollerHeight) % _alphabet.length).round();
        _text = _alphabet[posSelected];
        if (_text != _oldText) {
          for (var i = 0; i < _countries.length; i++) {
            if (_text.toString().compareTo(_countries[i].name.getOrNull.toString().toUpperCase()[0]) == 0) {
              _scrollController!.jumpTo((i * _itemSizeHeight) + 15);
              break;
            }
          }
          _oldText = _text;
        }
      }
    });
  }

  void _onVerticalDragStart(DragStartDetails details) {
    _offsetContainer = details.globalPosition.dy - diff;
  }

  void _filterElements(String s) {
    s = s.toUpperCase();
    setState(() {
      _countries = widget.countries
          .asList()
          .where(
            (e) =>
                (e.name.getOrEmpty.contains(s)) ||
                (e.dialCode.getOrNull != null && e.dialCode.getOrNull!.contains(s)) ||
                (e.name.getOrEmpty.toUpperCase().contains(s)),
          )
          .toList();
    });
  }

  Widget _getAlphabetItem(int index) {
    return Expanded(
      child: AdaptiveInkWell(
        borderRadius: 100.br,
        onTap: () {
          setState(() {
            posSelected = index;
            _text = _alphabet[posSelected];
            if (_text != _oldText) {
              for (var i = 0; i < _countries.length; i++) {
                if (_text.toString().compareTo(_countries[i].name.getOrNull.toString().toUpperCase()[0]) == 0) {
                  _scrollController!.jumpTo((i * _itemSizeHeight) + 10);
                  break;
                }
              }
              _oldText = _text;
            }
          });
        },
        child: Container(
          width: 40,
          height: 20,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: index == posSelected ? Colors.blue : Colors.transparent,
            shape: BoxShape.circle,
          ),
          child: Text(
            _alphabet[index],
            textAlign: TextAlign.center,
            style: (index == posSelected)
                ? const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)
                : TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: App.resolveColor(Colors.black, dark: Colors.white)),
          ),
        ),
      ),
    );
  }
}
