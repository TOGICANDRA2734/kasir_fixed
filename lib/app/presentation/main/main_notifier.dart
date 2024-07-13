import 'package:dewakoding_kasir/core/constant/constant.dart';
import 'package:dewakoding_kasir/core/helper/shared_preferences_helper.dart';
import 'package:dewakoding_kasir/core/provider/app_provider.dart';

class MainNotifier extends AppProvider {
  MainNotifier() {
    init();
  }

  String _name = '';
  String _initialName = '';

  int _selectedIndexNavBar = 0;

  int get selectedIndexNavBar => _selectedIndexNavBar;

  String get name => _name;

  String get initialName => _initialName;

  set selectedIndexNavBar(int param) {
    _selectedIndexNavBar = param;
    notifyListeners();
  }

  @override
  void init() {
    _getDetailUser();
  }

  _getDetailUser() async {
    showLoading();
    _name = await SharedPreferencesHelper.getString(PREF_NAME);
    final nameArray = _name.split(' ');
    _initialName = '';
    nameArray.forEach(
      (element) {
        _initialName += element.substring(0, 1).toUpperCase();
      },
    );
    hideLoading();
  }
}
