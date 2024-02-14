import 'package:flutter/material.dart';

import 'Soru.dart';

class Sorular {
  int _soruIndex = 0;
  List<Soru> _SoruBankasi = [
    Soru(soru: 'Titanic gelmis geçmiş en büyük gemidir', yanit: false),
    Soru(
        soru: 'Dünyadaki tavuk sayısı insan sayısından daha fazladır',
        yanit: true),
    Soru(soru: 'Kelebeklerin ömrü bir gündür', yanit: true),
    Soru(soru: 'Dünya düzdür', yanit: false),
    Soru(soru: 'Kaju aslında bir meyvenin sapıdır', yanit: true),
    Soru(soru: 'Fatih Sultan Mehmet hiç patates yememiştir', yanit: false),
    Soru(
        soru: 'Fatih Sultan Mehmet 1453 yılında İstanbulu Almıştır ',
        yanit: true),
    Soru(soru: 'Selimiye Camisi İstanbuldadır', yanit: false),
    Soru(soru: 'Divriği Ulu Cami  Sivastadır', yanit: true),
  ];

  String getsorumetni() {
    return _SoruBankasi[_soruIndex].soru;
  }

  bool cevap() {
    return _SoruBankasi[_soruIndex].yanit;
  }

  void sonrakiSoru() {
    if (_soruIndex + 1 < _SoruBankasi.length) {
      _soruIndex++;
    } else {
      Center(child: Text('yarısmamiz Bitmiştir'));
    }
  }

  bool SinavBittiMi() {
    if (_soruIndex + 1 >= _SoruBankasi.length) {
      return true;
    } else {
      return false;
    }
  }

  void testisifirla() {
    _soruIndex = 0;
  }
}
