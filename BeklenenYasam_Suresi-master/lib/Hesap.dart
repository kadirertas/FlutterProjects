import 'package:sure/user_data.dart';

class hesap {
  Userdata _userdata;
  hesap(this._userdata);

  double hesaplama() {
    double sonuc = 5;
    sonuc = 85.0 + _userdata.sporgunu - _userdata.icilencigara;
    sonuc = sonuc + (_userdata.Boy / _userdata.Kilo);
    if (_userdata.secilibuton == 'kadin') {
      sonuc = sonuc + 5;
    } else
      sonuc = sonuc - 5;
    return sonuc;
  }
}
