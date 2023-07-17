import 'package:flutter/material.dart';
import 'package:dermaliz/exit_page.dart';

class ProductRecommendPage extends StatelessWidget {
  final String skinType;
  final String skinProblem;

  const ProductRecommendPage({
    required this.skinType,
    required this.skinProblem,
    super.key}) ;

  String generateProductRecommendation() {
    String recommendation = '';

    // Cilt tipi ve cilt problemine göre önerileri oluştur
    if (skinType == 'Normal') {
      recommendation = 'Merhaba! Normal cilt tipine sahip olmanız harika!';
      if (skinProblem == 'Akne') {
        recommendation += ' Akne sorunuyla uğraşıyorsanız endişelenmeyin, size yardımcı olabilecek birkaç önerim var.\n\n'
            'Akneleri kontrol altında tutmak için salisilik asit içeren bir temizleyici ve tonik kullanabilirsiniz. Bu ürünler gözenekleri temizler ve sivilce oluşumunu önler.\n\n'
            'Cildinizi nemlendirmek ve akne oluşumunu engellemek için hyaluronik asit içeren bir nemlendirici krem kullanmanızı öneririm. Bu krem, cildinizi yoğun bir şekilde nemlendirirken aynı zamanda akneleri kurutur.\n\n'
            'Akne izlerini ve lekelerini azaltmak için C vitamini içeren bir leke giderici serum kullanabilirsiniz. C vitamini, cildi aydınlatır ve lekelerin görünümünü azaltır.\n\n'
            'Son olarak, cildinizi yatıştırmak ve kızarıklığı azaltmak için anti-enflamatuar özelliklere sahip bir krem tercih edebilirsiniz. Bu krem, cildinizi sakinleştirir ve aknelerin neden olduğu kızarıklığı hafifletir.';
      } else if (skinProblem == 'Kuruluk') {
        recommendation += ' Kuruluk sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'Cildinizi nemlendirmek için hyaluronik asit içeren bir nemlendirici krem kullanmanızı öneririm. Hyaluronik asit, cildi yoğun bir şekilde nemlendirir ve nem kaybını önler.\n\n'
            'Günlük olarak cildinizi nemlendirmek için nemlendirici bir yüz spreyi de kullanabilirsiniz. Bu, cildinizi anında canlandırır ve nemlendirir.\n\n'
            'Cildinizin daha uzun süre nemli kalmasını sağlamak için nemlendirici kremi cildinize uygulamadan önce hafif nemli bir cilt üzerine uygulayabilirsiniz.\n\n'
            'Düzenli olarak cilt bakım rutininize nem maskeleri eklemek de kuruluğu hafifletebilir. Hyaluronik asit, glicerol ve shea yağı içeren nem maskelerini tercih edebilirsiniz.';      } else if (skinProblem == 'Kırışıklık') {
      } else if (skinProblem == 'Pigmentasyon') {
        recommendation += ' Pigmentasyon sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'C vitamini içeren bir leke giderici serum kullanmanızı öneririm. C vitamini, cildi aydınlatır ve lekelerin görünümünü azaltır.\n\n'
            'Günlük olarak cildinizi nemlendirmek ve korumak için güneş koruyucu kullanmayı ihmal etmeyin. Güneşin zararlı etkileri pigmentasyonu artırabilir.\n\n'
            'Düzenli olarak cilt bakım rutininize aydınlatıcı maskeler veya tonikler ekleyebilirsiniz. Bu ürünler cildinizi aydınlatır ve pigmentasyonun azalmasına yardımcı olur.\n\n'
            'Cildinizi daha aydınlık ve homojen bir görünüme kavuşturmak için bir kapatıcı veya fondöten kullanabilirsiniz. Pigmente olmuş bölgelere odaklanarak cildinizi eşitleyebilirsiniz.';
      } else if (skinProblem == 'Roza') {
        recommendation += ' Roza sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
    'Hipoalerjenik ve anti-enflamatuar içerikli bir yatıştırıcı krem kullanabilirsiniz. Bu krem, cildi sakinleştirir ve kızarıklığı azaltır.\n\n'
    'Günlük olarak cildinizi nemlendirmek ve korumak için güneş koruyucu kullanmayı ihmal etmeyin. Güneşin zararlı etkileri roza belirtilerini artırabilir.\n\n'
    'Düzenli olarak cilt bakım rutininize anti-enflamatuar özelliklere sahip bir maske ekleyebilirsiniz. Bu maske, cildinizi sakinleştirir ve kızarıklığı hafifletir.\n\n'
    'Roza belirtilerini azaltmak için makyaj ürünlerini seçerken hipoalerjenik ve cilt dostu ürünleri tercih edin. İçeriğinde parfüm veya alkol bulunmayan ürünleri tercih edin.';
      } else if (skinProblem == 'Egzama') {
        recommendation += ' Egzama sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'E vitamini ve aloe vera içeren bir yatıştırıcı losyon kullanabilirsiniz. Bu losyon, cildi nemlendirir ve egzama belirtilerini hafifletir.\n\n'
            'Günlük olarak cildinizi nemlendirmek ve korumak için nemlendirici bir krem kullanın. Parfüm ve alkol içermeyen, cildi tahriş etmeyen ürünleri tercih edin.\n\n'
            'Egzama belirtilerini azaltmak için cildinizi sık sık nemlendirin. Özellikle banyo sonrası nemlendirici krem kullanmaya özen gösterin.\n\n'
            'Düzenli olarak cilt bakım rutininize yatıştırıcı maske ve kompresler ekleyebilirsiniz. Bu ürünler cildi yatıştırır ve egzama belirtilerini hafifletir.';
      }
    } else if (skinType == 'Kuru') {
      recommendation = 'Merhaba! Kuru cilt tipine sahip olmanız harika!';
      if (skinProblem == 'Akne') {
        recommendation += ' Akne sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'Kuru ciltler için nemlendirici etkisi yüksek bir temizleyici kullanabilirsiniz. Hassas bir cilt yapısına sahip olduğunuz için nazik bir şekilde temizleyici ürünler tercih edin.\n\n'
            'Cildinizi nemlendirmek ve akne oluşumunu engellemek için hafif ve nemlendirici bir jel veya serum kullanabilirsiniz. Bu ürünler cildinizi nemlendirirken yağlanmayı önler.\n\n'
            'Akne izlerini ve lekelerini azaltmak için retinol içeren bir leke giderici krem kullanabilirsiniz. Retinol, cilt hücrelerinin yenilenmesini destekler ve lekelerin görünümünü azaltır.\n\n'
            'Son olarak, cildinizi yatıştırmak ve kızarıklığı azaltmak için nemlendirici bir maske uygulayabilirsiniz. Özellikle hyaluronik asit ve aloe vera içeren maskeler cildinizi rahatlatır ve nemlendirir.';
      } else if (skinProblem == 'Kuruluk') {
        recommendation += ' Kuruluk sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'Cildinizi nemlendirmek için yoğun ve besleyici bir nemlendirici krem kullanmanızı öneririm. Özellikle shea yağı, argan yağı veya jojoba yağı içeren kremler kuru cildi besler ve nemlendirir.\n\n'
            'Düzenli olarak cildinize nem maskeleri uygulayabilirsiniz. Hyaluronik asit ve gliserin içeren nem maskeleri cildi yoğun bir şekilde nemlendirir ve kuruluğu hafifletir.\n\n'
            'Cildinizi yıkarken sıcak su yerine ılık su kullanmaya özen gösterin. Sıcak su cildin doğal yağlarını arındırır ve kuruluğu artırabilir.\n\n'
            'Cildinizi nemlendirmek için içerikleri parfüm ve alkol içermeyen ürünleri tercih edin. Cildi tahriş etmeyen ve nemlendirme özelliği yüksek ürünler kuru cilde daha iyi bakım sağlar.';
      } else if (skinProblem == 'Kırışıklık') {
        recommendation += ' Kırışıklık sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'Cildinizi nemlendirmek için yoğun bir nemlendirici krem kullanmanızı öneririm. Kuru ciltlerde nem kaybı kırışıklıkların oluşumunu hızlandırabilir, bu yüzden nemlendirme önemlidir.\n\n'
            'Retinol içeren bir anti-aging serum kullanabilirsiniz. Retinol, kırışıklıkların görünümünü azaltır ve cildin yenilenme sürecini destekler.\n\n'
            'Kırışıklıkların belirgin olduğu bölgelere hialuronik asit içeren dolgu ürünleri veya kırışıklık giderici kremler uygulayabilirsiniz. Bu ürünler cildi dolgunlaştırır ve kırışıklıkların azalmasına yardımcı olur.\n\n'
            'Günlük olarak güneş koruyucu kullanmaya özen gösterin. Güneşin zararlı UV ışınları cildin yaşlanmasını hızlandırabilir, bu yüzden korunmak önemlidir.';
      } else if (skinProblem == 'Pigmentasyon') {
        recommendation += ' Pigmentasyon sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'Cildinizi korumak ve pigmentasyon sorununu azaltmak için güneş koruyucu kullanmayı ihmal etmeyin. Güneşin zararlı etkileri pigmentasyonu artırabilir.\n\n'
            'Cildinizi aydınlatmak için C vitamini içeren bir leke giderici serum kullanabilirsiniz. C vitamini, cildi aydınlatır ve lekelerin görünümünü azaltır.\n\n'
            'Düzenli olarak cilt bakım rutininize aydınlatıcı maske ve tonikler ekleyebilirsiniz. Bu ürünler cildinizi aydınlatır ve pigmentasyonun azalmasına yardımcı olur.\n\n'
            'Cildinizi daha aydınlık ve homojen bir görünüme kavuşturmak için bir kapatıcı veya fondöten kullanabilirsiniz. Pigmente olmuş bölgelere odaklanarak cildinizi eşitleyebilirsiniz.';
      } else if (skinProblem == 'Roza') {
        recommendation += ' Roza sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'Hipoalerjenik ve anti-enflamatuar içerikli bir yatıştırıcı krem kullanabilirsiniz. Bu krem, cildi sakinleştirir ve kızarıklığı azaltır.\n\n'
            'Günlük olarak cildinizi nemlendirmek ve korumak için güneş koruyucu kullanmayı ihmal etmeyin. Güneşin zararlı etkileri roza belirtilerini artırabilir.\n\n'
            'Düzenli olarak cilt bakım rutininize anti-enflamatuar özelliklere sahip bir maske ekleyebilirsiniz. Bu maske, cildi sakinleştirir ve kızarıklığı hafifletir.\n\n'
            'Roza belirtilerini azaltmak için makyaj ürünlerini seçerken hipoalerjenik ve cilt dostu ürünleri tercih edin. İçeriğinde parfüm veya alkol bulunmayan ürünleri tercih edin.';
      } else if (skinProblem == 'Egzama') {
        recommendation += ' Egzama sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'E vitamini ve aloe vera içeren bir yatıştırıcı losyon kullanabilirsiniz. Bu losyon, cildi nemlendirir ve egzama belirtilerini hafifletir.\n\n'
            'Günlük olarak cildinizi nemlendirmek ve korumak için nemlendirici bir krem kullanın. Parfüm ve alkol içermeyen, cildi tahriş etmeyen ürünleri tercih edin.\n\n'
            'Egzama belirtilerini azaltmak için cildinizi sık sık nemlendirin. Özellikle banyo sonrası nemlendirici krem kullanmaya özen gösterin.\n\n'
            'Düzenli olarak cilt bakım rutininize yatıştırıcı maske ve kompresler ekleyebilirsiniz. Bu ürünler cildi yatıştırır ve egzama belirtilerini hafifletir.';
      }
    } else if (skinType == 'Yağlı') {
      recommendation = 'Merhaba! Yağlı cilt tipine sahip olmanız harika! ';
      if (skinProblem == 'Akne') {
        recommendation += 'Akne sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'Yağlı ciltler için salisilik asit içeren bir temizleyici kullanmanızı öneririm. Bu ürünler gözenekleri temizler ve sivilce oluşumunu önler.\n\n'
            'Cildinizi nemlendirmek ve akne oluşumunu engellemek için yağsız ve hafif bir nemlendirici kullanmanızı öneririm. Bu ürünler cildi nemlendirirken yağlanmayı önler.\n\n'
            'Akne izlerini ve lekelerini azaltmak için retinol içeren bir leke giderici krem kullanabilirsiniz. Retinol, cilt hücrelerinin yenilenmesini destekler ve lekelerin görünümünü azaltır.\n\n'
            'Düzenli olarak cilt bakım rutininize arındırıcı maskeler ekleyebilirsiniz. Kil, kömür veya salisilik asit içeren maskeler yağlı cildi temizler ve sivilce oluşumunu önler.';
      } else if (skinProblem == 'Kuruluk') {
        recommendation += 'Kuruluk sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'Yağlı ciltlerde kuruluk sorunu nadir görülse de, nemlendirme önemlidir. Hafif ve yağsız bir nemlendirici kullanmanızı öneririm. Özellikle jel veya su bazlı ürünler tercih edin.\n\n'
            'Günlük olarak cildinizi temizlemek için hafif bir temizleyici kullanın. Yağsız ve su bazlı temizleyiciler yağlılık hissini azaltırken cildi temizler.\n\n'
            'Cildinizi nemlendirmek için nem maskeleri kullanabilirsiniz. Hyaluronik asit içeren maskeler yağsız bir şekilde nemlendirme sağlar ve cildi canlandırır.\n\n'
            'Makyaj yaparken yağsız ve yağ emici özelliklere sahip ürünleri tercih edin. Bu ürünler cildi mat tutar ve yağlanmayı önler.';
      } else if (skinProblem == 'Kırışıklık') {
        recommendation += 'Kırışıklık sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'Kırışıklıkları azaltmak ve cildi sıkılaştırmak için retinol içeren bir anti-aging krem kullanabilirsiniz. Retinol, cilt hücrelerinin yenilenmesini destekler ve kırışıklıkların görünümünü azaltır.\n\n'
            'Cildinizi güneşin zararlı etkilerine karşı korumak için güneş koruyucu kullanmayı ihmal etmeyin. Güneşin zararlı UV ışınları kırışıklıkların oluşumunu hızlandırabilir.\n\n'
            'Düzenli olarak cilt bakım rutininize antioksidan içeren ürünler ekleyin. Yeşil çay özü, C vitamini veya retinol içeren ürünler cildi gençleştirir ve kırışıklıkların görünümünü azaltır.\n\n'
            'Cildi sıkılaştırmak ve elastikiyetini artırmak için cildi masaj yaparak uyarabilirsiniz. Masaj, cildin kan dolaşımını hızlandırır ve kırışıklıkların azalmasına yardımcı olur.';
      } else if (skinProblem == 'Pigmentasyon') {
        recommendation += 'Pigmentasyon sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'Cildinizi korumak ve pigmentasyon sorununu azaltmak için güneş koruyucu kullanmayı ihmal etmeyin. Güneşin zararlı etkileri pigmentasyonu artırabilir.\n\n'
            'Cildinizi aydınlatmak ve lekelerin görünümünü azaltmak için C vitamini içeren bir leke giderici serum kullanabilirsiniz. C vitamini, cildi aydınlatır ve lekelerin görünümünü azaltır.\n\n'
            'Düzenli olarak cilt bakım rutininize aydınlatıcı maske ve tonikler ekleyebilirsiniz. Bu ürünler cildi aydınlatır ve pigmentasyonun azalmasına yardımcı olur.\n\n'
            'Makyaj yaparken lekeleri ve pigmentasyonu kapatabilecek bir kapatıcı veya fondöten kullanabilirsiniz. Doğru renk tonunu seçerek cildi eşitleyebilirsiniz.';
      } else if (skinProblem == 'Roza') {
        recommendation += 'Roza sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'Hipoalerjenik ve anti-enflamatuar içerikli bir yatıştırıcı krem kullanabilirsiniz. Bu krem, cildi sakinleştirir ve kızarıklığı azaltır.\n\n'
            'Günlük olarak cildinizi nemlendirmek ve korumak için güneş koruyucu kullanmayı ihmal etmeyin. Güneşin zararlı etkileri roza belirtilerini artırabilir.\n\n'
            'Düzenli olarak cilt bakım rutininize anti-enflamatuar özelliklere sahip bir maske ekleyebilirsiniz. Bu maske, cildi sakinleştirir ve kızarıklığı hafifletir.\n\n'
            'Roza belirtilerini azaltmak için makyaj ürünlerini seçerken hipoalerjenik ve cilt dostu ürünleri tercih edin. İçeriğinde parfüm veya alkol bulunmayan ürünleri tercih edin.';
      } else if (skinProblem == 'Egzama') {
        recommendation += 'Egzama sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'E vitamini ve aloe vera içeren bir yatıştırıcı losyon kullanabilirsiniz. Bu losyon, cildi nemlendirir ve egzama belirtilerini hafifletir.\n\n'
            'Günlük olarak cildinizi nemlendirmek ve korumak için nemlendirici bir krem kullanın. Parfüm ve alkol içermeyen, cildi tahriş etmeyen ürünleri tercih edin.\n\n'
            'Egzama belirtilerini azaltmak için cildinizi sık sık nemlendirin. Özellikle banyo sonrası nemlendirici krem kullanmaya özen gösterin.\n\n'
            'Düzenli olarak cilt bakım rutininize yatıştırıcı maske ve kompresler ekleyebilirsiniz. Bu ürünler cildi yatıştırır ve egzama belirtilerini hafifletir.';
      }

    } else if (skinType == 'Karma') {
      recommendation = 'Merhaba! Karma cilt tipine sahip olmanız harika! ';
      if (skinProblem == 'Akne') {
        recommendation += 'Akne sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'Cildinizin T bölgesindeki yağlanmayı kontrol altında tutmak için salisilik asit içeren bir temizleyici ve tonik kullanabilirsiniz. Bu ürünler gözenekleri temizler ve sivilce oluşumunu önler.\n\n'
            'Cildinizin kuru bölgelerini nemlendirmek için hafif bir nemlendirici krem kullanmanızı öneririm. Yağsız formüllü bir nemlendirici, kuru bölgeleri nemlendirirken cildi yağlandırmaz.\n\n'
            'Akne izlerini ve lekelerini azaltmak için C vitamini içeren bir leke giderici serum kullanabilirsiniz. C vitamini, cildi aydınlatır ve lekelerin görünümünü azaltır.\n\n'
            'Haftada bir kez peeling uygulayarak cildinizi ölü deriden arındırabilirsiniz. Böylece gözeneklerin temizlenmesine ve sivilce oluşumunun önlenmesine yardımcı olursunuz.';
      } else if (skinProblem == 'Kuruluk') {
        recommendation += 'Kuruluk sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'Cildinizin kuru bölgelerini nemlendirmek için yoğun bir nemlendirici krem kullanabilirsiniz. Özellikle yağlı olmayan ve yoğun formüllü nemlendiriciler tercih edin.\n\n'
            'Cildinizin yağlı bölgelerinde parlama kontrolü için matlaştırıcı bir jel veya losyon kullanabilirsiniz. Bu ürünler cildi matlaştırırken yağ salgısını azaltır.\n\n'
            'Cildinizin kuru bölgelerini haftada birkaç kez besleyici bir maskeyle nemlendirebilirsiniz. Yoğun nemlendirme sağlayan maskeler tercih edin.\n\n'
            'Cildinizi temizlerken sert veya alkollü temizleyicilerden kaçının. Nazik ve nemlendirici özelliklere sahip temizleyicileri tercih edin.';
      } else if (skinProblem == 'Kırışıklık') {
        recommendation += 'Kırışıklık sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'Cildinizin kuru bölgelerini nemlendirmek için yoğun bir nemlendirici krem kullanabilirsiniz. Kuru bölgelerdeki kırışıklıkları azaltmaya yardımcı olur.\n\n'
            'Cildinizin yağlı bölgelerinde kırışıklıkları azaltmak için hafif bir anti-aging serum kullanabilirsiniz. Retinol veya peptide sahip ürünler tercih edin.\n\n'
            'Güneşin zararlı etkilerinden korunmak için güneş koruyucu kullanmayı ihmal etmeyin. Güneş ışınları cildin yaşlanmasını hızlandırabilir.\n\n'
            'Düzenli olarak cilt bakım rutininize nemlendirici maskeler ekleyin. Hyaluronik asit veya kolajen içeren maskeler kırışıklıkları azaltır ve cildi gençleştirir.';
      } else if (skinProblem == 'Pigmentasyon') {
        recommendation += 'Pigmentasyon sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'Cildinizi korumak ve pigmentasyon sorununu azaltmak için güneş koruyucu kullanmayı ihmal etmeyin. Güneşin zararlı etkileri pigmentasyonu artırabilir.\n\n'
            'Cildinizi aydınlatmak ve lekelerin görünümünü azaltmak için C vitamini içeren bir leke giderici serum kullanabilirsiniz. C vitamini, cildi aydınlatır ve lekelerin görünümünü azaltır.\n\n'
            'Düzenli olarak cilt bakım rutininize aydınlatıcı maskeler veya tonikler ekleyebilirsiniz. Bu ürünler cildi aydınlatır ve pigmentasyonun azalmasına yardımcı olur.\n\n'
            'Makyaj yaparken lekeleri ve pigmentasyonu kapatabilecek bir kapatıcı veya fondöten kullanabilirsiniz. Doğru renk tonunu seçerek cildi eşitleyebilirsiniz.';
      } else if (skinProblem == 'Roza') {
        recommendation += 'Roza sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'Hipoalerjenik ve anti-enflamatuar içerikli bir yatıştırıcı krem kullanabilirsiniz. Bu krem, cildi sakinleştirir ve kızarıklığı azaltır.\n\n'
            'Günlük olarak cildinizi nemlendirmek ve korumak için güneş koruyucu kullanmayı ihmal etmeyin. Güneşin zararlı etkileri roza belirtilerini artırabilir.\n\n'
            'Düzenli olarak cilt bakım rutininize anti-enflamatuar özelliklere sahip bir maske ekleyebilirsiniz. Bu maske, cildi sakinleştirir ve kızarıklığı hafifletir.\n\n'
            'Roza belirtilerini azaltmak için makyaj ürünlerini seçerken hipoalerjenik ve cilt dostu ürünleri tercih edin. İçeriğinde parfüm veya alkol bulunmayan ürünleri tercih edin.';
      } else if (skinProblem == 'Egzama') {
        recommendation += 'Egzama sorunuyla uğraşıyorsanız size yardımcı olabilecek birkaç önerim var.\n\n'
            'E vitamini ve aloe vera içeren bir yatıştırıcı losyon kullanabilirsiniz. Bu losyon, cildi nemlendirir ve egzama belirtilerini hafifletir.\n\n'
            'Günlük olarak cildinizi nemlendirmek ve korumak için nemlendirici bir krem kullanın. Parfüm ve alkol içermeyen, cildi tahriş etmeyen ürünleri tercih edin.\n\n'
            'Egzama belirtilerini azaltmak için cildinizi sık sık nemlendirin. Özellikle banyo sonrası nemlendirici krem kullanmaya özen gösterin.\n\n'
            'Düzenli olarak cilt bakım rutininize yatıştırıcı maske ve kompresler ekleyebilirsiniz. Bu ürünler cildi yatıştırır ve egzama belirtilerini hafifletir.';
      }
    }

    return recommendation;
  }

  @override
  Widget build(BuildContext context) {
    String recommendation = generateProductRecommendation();
    ScrollController _scrollController = ScrollController();
    double _scrollPosition = 0;


    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/backgroundSkin.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 200.0, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ürün İçerik Önerisi: ',
                  style: TextStyle(
                    fontFamily: "Nunito",
                    fontSize: 35,
                    color: Color(0xFF2F80ED),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Cilt tipiniz: $skinType'', Probleminiz: $skinProblem',
                  style: TextStyle(
                    fontFamily: "Nunito",
                    color: Colors.black45,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 30),

                Container(
                  height: 290,
                  child: Scrollbar(
                    isAlwaysShown: true,
                    thickness: 8,
                    radius: Radius.circular(4),
                    showTrackOnHover: true,
                    hoverThickness: 12,
                    child: Padding(
                      padding: EdgeInsets.only(right: 12), // İstediğiniz boşluğu buradan ayarlayabilirsiniz
                      child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int index) {
                          return Text(
                            recommendation,
                            style: TextStyle(
                              fontFamily: "Nunito",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ExitPage()),
            );
          },

          backgroundColor: Colors.white,
          child: Icon(
            Icons.login_outlined,
            color: Color(0xFF2F80ED),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
