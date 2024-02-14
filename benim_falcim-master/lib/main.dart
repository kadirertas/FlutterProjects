import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const falcim());
}

class falcim extends StatefulWidget {
  const falcim({Key? key}) : super(key: key);

  @override
  State<falcim> createState() => _falcimState();
}

class _falcimState extends State<falcim> {
  int a = 0;
  List<String> fal = [
    'FALA İNANMA FALSIZDA KALMA \n DEMİŞLER HADİ TIKLA BAKAM',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '''Kırılmaca Darılmaca Yok
             Ne Görürsek Onu Söyleriz :)''',
          style: TextStyle(fontSize: 15),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 115),
          child: Column(
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset('assets/images/kure.png')),
              Container(
                width: 300,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      a = Random().nextInt(5) + 1;
                      print(a);
                    });
                  },
                  child: Card(
                    color: Colors.cyanAccent,
                    child: ListTile(
                      leading: Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.deepOrange,
                      ),
                      title: Text(
                        'bizim alperin uzmanlık ',
                        style: TextStyle(color: Colors.deepOrange),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 300,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      a = Random().nextInt(5) + 6;
                      print(a);
                    });
                  },
                  child: Card(
                    color: Colors.cyanAccent,
                    child: ListTile(
                      leading: Icon(
                        Icons.shopping_cart_checkout,
                        size: 30,
                        color: Colors.green,
                      ),
                      title: Text(
                        'Mal Mülk Durumları',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 300,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      a = Random().nextInt(5) + 11;

                      print(a);
                    });
                  },
                  child: Card(
                    color: Colors.cyanAccent,
                    child: ListTile(
                      leading: Icon(
                        Icons.mood,
                        size: 30,
                        color: Colors.red,
                      ),
                      title: Text(
                        'Hayat Tavsiyeleri',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                fal[a],
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
