import 'package:patta/app/log.dart';
import 'package:patta/model/Language.dart';
import 'package:shared_preferences/shared_preferences.dart';

class I18n {
  static var _selectedLanguage;

  static Future<Language> init() async {
    final prefs = await SharedPreferences.getInstance();
    _selectedLanguage = Language.from(prefs.getString(Language.SETTINGS_KEY));
    log2("I18n.init selected language: $_selectedLanguage");
    return _selectedLanguage;
  }

  static void set(Language language) {
    _selectedLanguage = language;
    log2("I18n.set selected language: $_selectedLanguage");
  }

  static String get(String key) {
    var value = strings[_selectedLanguage]![key];
    return validString(value) ? value : strings[Language.eng]![key];
  }

  static bool validString(value) => value != null && value != "";

  static String getForced(Language lang, String key) {
    log2("I18n.getForced selected language: $lang");
    return strings[lang]![key];
  }

  static const Map<Language, Map> strings = {
    Language.eng: {
      "about_pariyatti": "About Pariyatti",
      "account": "Account",
      "app_name": "Pariyatti",
      "bookmarks": "Bookmarks",
      "contact_pariyatti": "Contact Pariyatti",
      "could_not_launch": "Could not launch",
      "dark_theme": "Dark Theme",
      "dhamma_verse": "Daily Dhamma Verse from S.N. Goenka",
      "dhamma_verse_short": "Daily Dhamma Verse",
      "donate": "Donate",
      "donate_preamble": "Pariyatti is an independent USA 501(c)(3) non-profit organization and is not part of the Vipassana organization. Pariyatti relies on a combination of sales revenue and donations to offer its services. All donations are tax-deductible in accordance with US tax law.\n\nIf you would like to have your donation be matched by your employer, request it for Pariyatti (EIN 80-0038336).",
      "donate_time": "Donate Time",
      "donate_time_preamble": "Pariyatti relies on the vibrant participation of our supporters to continue our service programs. Volunteers are welcome to contribute to the Pariyatti mobile app or a variety of other Pariyatti projects.\n\nThe mobile app team is currently seeking non-technical volunteers with skills in translation from English and Pāli. We are also seeking technical volunteers with skills in Flutter, Clojure, Rails, Docker, and Terraform.\n\nTo learn about Pariyatti's other volunteer needs, please click the button below.",
      "empty_card": "Empty Card",
      "error": "Error",
      "feeds": "Feeds",
      "inspiration": "Inspiration",
      "language": "Language",
      "language_alternate": "Alternate",
      "languages": "Languages",
      "light_theme": "Light Theme",
      "nothing_bookmarked": "You haven't bookmarked anything yet",
      "only_english": "Only English is available as an Alternate Language at this time.",
      "pali_word": "Pāli Word",
      "pali_word_of_the_day": "Pāli Word of the Day",
      "security_and_privacy": "Security and Privacy",
      "settings": "Settings",
      "share_dhamma_verse": "Share Dhamma Verse",
      "share_inspiration": "Share Inspiration",
      "share_pali_word": "Share Pāli Word",
      "share_words_of_buddha": "Share Words of the Buddha",
      "subscribe_to_newsletter": "Subscribe to Newsletter",
      "system_default": "System Default",
      "theme": "Theme",
      "today": "Today",
      "translation": "Translation",
      "try_again_later": "An error occurred. Please try again later.",
      "was_empty": "was empty",
      "words_of_the_buddha": "Daily Words of the Buddha",
    },

    Language.fra: {
      "about_pariyatti": "À propos de Pariyatti",
      "account": "Compte",
      "app_name": "Pariyatti",
      "bookmarks": "Signets",
      "contact_pariyatti": "Contacter Pariyatti",
      "could_not_launch": "Impossible de lancer",
      "dark_theme": "Thème sombre",
      "dhamma_verse": "Verset de Dhamma quotidien de S.N. Goenka",
      "dhamma_verse_short": "Verset de Dhamma quotidien",
      "donate": "Faire un don",
      "donate_preamble": "Pariyatti est une organisation indépendante à but non lucratif 501(c)(3) basée aux États-Unis et ne fait pas partie de l'organisation Vipassana. Pariyatti s'appuie sur une combinaison de revenus de vente et de dons pour offrir ses services. Tous les dons sont déductibles des impôts conformément à la loi fiscale américaine.\n\nSi vous souhaitez que votre don soit assorti par votre employeur, demandez-le pour Pariyatti (EIN 80-0038336).",
      "donate_time": "Faire un don de temps",
      "donate_time_preamble": "Pariyatti compte sur la participation dynamique de nos supporters pour poursuivre nos programmes de service. Les bénévoles sont invités à contribuer à l'application mobile Pariyatti ou à une variété d'autres projets Pariyatti.\n\nL'équipe de l'application mobile recherche actuellement des bénévoles non techniques ayant des compétences en traduction de l'anglais et du pali. Nous recherchons également des volontaires techniques ayant des compétences en Flutter, Clojure, Rails, Docker et Terraform.\n\nPour en savoir plus sur les autres besoins bénévoles de Pariyatti, veuillez cliquer sur le bouton ci-dessous.",
      "empty_card": "Carte vide",
      "error": "Erreur",
      "feeds": "Flux",
      "inspiration": "Inspiration",
      "language": "Langue",
      "language_alternate": "Alternative",
      "languages": "Langues",
      "light_theme": "Thème clair",
      "nothing_bookmarked": "Vous n'avez encore rien mis en signet",
      "only_english": "Seule l'anglais est disponible comme langue alternative pour le moment.",
      "pali_word": "Mot en Pāli",
      "pali_word_of_the_day": "Mot en Pāli du jour",
      "security_and_privacy": "Sécurité et confidentialité",
      "settings": "Paramètres",
      "share_dhamma_verse": "Partager le verset de Dhamma",
      "share_inspiration": "Partager l'inspiration",
      "share_pali_word": "Partager le mot en Pāli",
      "share_words_of_buddha": "Partager les paroles de Bouddha",
      "subscribe_to_newsletter": "S'abonner à la newsletter",
      "system_default": "Paramètres par défaut du système",
      "theme": "Thème",
      "today": "Aujourd'hui",
      "translation": "Traduction",
      "try_again_later": "Une erreur s'est produite. Veuillez réessayer plus tard.",
      "was_empty": "était vide",
      "words_of_the_buddha": "Paroles quotidiennes de Bouddha",
    },

    Language.ita: {
      "about_pariyatti": "Sulla App",
      "account": "Profilo",
      "app_name": "Pariyatti",
      "bookmarks": "Segnalibri",
      "contact_pariyatti": "Contatta Pariyatti",
      "could_not_launch": "Impossibile avviare",
      "dark_theme": "Tema scuro",
      "dhamma_verse": "Strofe quotidiane sul Dhamma di S. N. Goenka",
      "dhamma_verse_short": "Verso quotidiano del Dhamma",
      "donate": "Dona",
      "donate_preamble": "Pariyatti è un'organizzazione indipendente non a scopo di lucro degli Stati Uniti 501(c)(3) e non fa parte dell'organizzazione Vipassana. Pariyatti si basa su una combinazione di entrate da vendite e donazioni per offrire i suoi servizi. Tutte le donazioni sono detraibili dalle tasse in conformità con la legge fiscale degli Stati Uniti.\n\nSe desideri che la tua donazione venga corrisposta dal tuo datore di lavoro, richiedila per Pariyatti (EIN 80-0038336).",
      "donate_time": "Donare tempo",
      "donate_time_preamble": "Pariyatti fa affidamento sulla vivace partecipazione dei nostri sostenitori per continuare i nostri programmi di servizio. I volontari sono invitati a contribuire all'app mobile Pariyatti o a una varietà di altri progetti Pariyatti.\n\nIl team dell'app mobile sta attualmente cercando volontari non tecnici con competenze nella traduzione dall'inglese e dal pali. Cerchiamo anche volontari tecnici con competenze in Flutter, Clojure, Rails, Docker e Terraform.\n\nPer conoscere le altre esigenze di volontariato di Pariyatti, fare clic sul pulsante in basso.",
      "empty_card": "Carta vuota",
      "error": "Errore",
      "feeds": "Feed",
      "inspiration": "Ispirazione",
      "language": "Lingua",
      "language_alternate": "Alternativa",
      "languages": "Lingue",
      "light_theme": "Tema chiaro",
      "nothing_bookmarked": "Non hai ancora aggiunto segnalibri",
      "only_english": "Solo l'inglese è disponibile come lingua alternativa in questo momento.",
      "pali_word": "Parola Pāli",
      "pali_word_of_the_day": "Parola del giorno in Pāli",
      "security_and_privacy": "Sicurezza e privacy",
      "settings": "Impostazioni",
      "share_dhamma_verse":"Condividi verso del Dhamma",
      "share_inspiration": "Condividi ispirazione",
      "share_pali_word": "Condividi parola in Pāli",
      "share_words_of_buddha":"Condividi parole di Buddha",
      "subscribe_to_newsletter": "Iscriviti alla newsletter",
      "system_default": "Predefinito di sistema",
      "theme": "Tema",
      "today": "Oggi",
      "translation": "Traduzione",
      "try_again_later": "Si è verificato un errore. Riprova più tardi.",
      "was_empty": "era vuoto",
      "words_of_the_buddha": "Parole quotidiane di Buddha",
    },

    Language.lit: {
      "about_pariyatti": "Apie Pariyatti",
      "account": "Paskyra",
      "app_name": "Pariyatti",
      "bookmarks": "Žymės",
      "contact_pariyatti": "Susisiekite su Pariyatti",
      "could_not_launch": "Nepavyko paleisti",
      "dark_theme": "Tamsus dizainas",
      "dhamma_verse": "Dhammos eilutė",
      "dhamma_verse_short": "Dhamma eilutė",
      "donate": "Paaukokite",
      "donate_preamble": "Pariyatti yra nepriklausoma JAV 501(c)(3) ne pelno siekianti organizacija ir nėra Vipassana organizacijos dalis. Pariyatti savo paslaugoms teikti remiasi pardavimų pajamomis ir aukomis. Visos aukos yra mokesčių išskaičiavimo pagal JAV mokesčių įstatymą.\n\nJei norite, kad jūsų darbdavys priskirtų jūsų auką, prašykite skirti ją Pariyatti (EIN 80-0038336).",
      "donate_time": "Paaukoti laiko",
      "donate_time_preamble": "Pariyatti pasikliauja aktyviu mūsų rėmėjų dalyvavimu, kad tęstų mūsų paslaugų programas. Kviečiame savanorius prisidėti prie Pariyatti mobiliosios programėlės ar įvairių kitų Pariyatti projektų.\n\nMobiliosios programėlės komanda šiuo metu ieško netechninių savanorių, turinčių vertimo iš anglų ir palių kalbų įgūdžių. Taip pat ieškome techninių savanorių, turinčių Flutter, Clojure, Rails, Docker ir Terraform įgūdžių.\n\nNorėdami sužinoti apie kitus Pariyatti savanorių poreikius, spustelėkite toliau esantį mygtuką.",
      "empty_card": "Kortelė tuščia",
      "error": "Klaida",
      "feeds": "Naujienos",
      "inspiration": "Inspiracija",
      "language": "Kalba",
      "language_alternate": "Kitos kalbos",
      "languages": "Kalbos",
      "light_theme": "Šviesus dizainas",
      "nothing_bookmarked": "Jūs dar nieko nesumetėte",
      "only_english": "Vien anglų kalba yra pasiekiama kaip kitas kalbos pasirinkimas šiuo metu.",
      "pali_word": "Pāli žodis",
      "pali_word_of_the_day": "Pāli žodis dienai",
      "security_and_privacy": "Saugumas ir privatumas",
      "settings": "Nustatymai",
      "share_dhamma_verse":"Dalintis Dhamma eilute",
      "share_inspiration": "Dalintis inspiracija",
      "share_pali_word": "Dalintis Pāli žodžiu",
      "share_words_of_buddha":"Dalintis Budos žodžiais",
      "subscribe_to_newsletter": "Prenumeruoti naujienlaiškį",
      "system_default": "Sistemos numatytasis",
      "theme": "Dizainas",
      "today": "Šiandien",
      "translation": "Vertimas",
      "try_again_later": "Įvyko klaida. Bandykite vėliau.",
      "was_empty": "buvo tuščias",
      "words_of_the_buddha": "Budos žodžiai dienai",
    },

    Language.por: {
      "about_pariyatti": "Sobre Pariyatti",
      "account": "Conta",
      "app_name": "Pariyatti",
      "bookmarks": "Marcadores",
      "contact_pariyatti": "Contato Pariyatti",
      "could_not_launch": "Não foi possível iniciar",
      "dark_theme": "Tema Escuro",
      "dhamma_verse": "Verso diário do Dhamma de S.N. Goenka",
      "dhamma_verse_short": "Verso diário do Dhamma",
      "donate": "Doar",
      "donate_preamble": "Pariyatti é uma organização independente sem fins lucrativos 501(c)(3) dos Estados Unidos e não faz parte da organização Vipassana. Pariyatti depende de uma combinação de receita de vendas e doações para oferecer seus serviços. Todas as doações são dedutíveis de impostos de acordo com a legislação tributária dos EUA.\n\nSe você deseja que sua doação seja correspondida pelo seu empregador, solicite-a para Pariyatti (EIN 80-0038336).",
      "donate_time": "Doar tempo",
      "donate_time_preamble": "Pariyatti conta com a participação vibrante de nossos apoiadores para continuar nossos programas de serviço. Os voluntários são bem-vindos para contribuir com o aplicativo móvel Pariyatti ou uma variedade de outros projetos Pariyatti.\n\nA equipe do aplicativo móvel está atualmente procurando voluntários não técnicos com habilidades em tradução de inglês e páli. Também estamos buscando voluntários técnicos com habilidades em Flutter, Clojure, Rails, Docker e Terraform.\n\nPara saber mais sobre as outras necessidades de voluntariado de Pariyatti, clique no botão abaixo.",
      "empty_card": "Cartão vazio",
      "error": "Erro",
      "feeds": "Feed",
      "inspiration": "Inspiração",
      "language": "Idioma",
      "language_alternate": "Idioma Alternativo",
      "languages": "Idiomas",
      "light_theme": "Tema Claro",
      "nothing_bookmarked": "Você ainda não marcou nada",
      "only_english": "Apenas o inglês está disponível como idioma alternativo no momento.",
      "pali_word": "Palavra em páli",
      "pali_word_of_the_day": "Palavra do dia em páli",
      "security_and_privacy": "Segurança e Privacidade",
      "settings": "Configurações",
      "share_dhamma_verse": "Compartilhar verso diário do Dhamma",
      "share_inspiration": "Compartilhar inspiração",
      "share_pali_word": "Compartilhar palavra em páli",
      "share_words_of_buddha": "Compartilhar palavras de Buda",
      "subscribe_to_newsletter": "Inscrever-se na newsletter",
      "system_default": "Padrão do sistema",
      "theme": "Tema",
      "today": "Hoje",
      "translation": "Tradução",
      "try_again_later": "Ocorreu um erro. Tente novamente mais tarde.",
      "was_empty": "estava vazio",
      "words_of_the_buddha": "Palavras diárias do Buda"
    },

    Language.spa: {
      "about_pariyatti": "Acerca de Pariyatti",
      "account": "Cuenta",
      "app_name": "Pariyatti",
      "bookmarks": "Marcadores",
      "contact_pariyatti": "Contactar Pariyatti",
      "could_not_launch": "No se pudo iniciar",
      "dark_theme": "Tema oscuro",
      "dhamma_verse": "Verso diario del Dhamma de S.N. Goenka",
      "dhamma_verse_short": "Verso diario del Dhamma",
      "donate": "Donar",
      "donate_preamble": "Pariyatti es una organización independiente sin fines de lucro 501(c)(3) de EE. UU. y no forma parte de la organización Vipassana. Pariyatti depende de una combinación de ingresos por ventas y donaciones para ofrecer sus servicios. Todas las donaciones son deducibles de impuestos de acuerdo con la legislación tributaria de EE. UU. \n\nSi desea que su donación sea igualada por su empleador, solicítelo para Pariyatti (EIN 80-0038336).",
      "donate_time": "Donar tiempo",
      "donate_time_preamble": "Pariyatti depende de la vibrante participación de nuestros seguidores para continuar con nuestros programas de servicio. Los voluntarios pueden contribuir a la aplicación móvil Pariyatti o a una variedad de otros proyectos de Pariyatti.\n\nEl equipo de la aplicación móvil actualmente está buscando voluntarios no técnicos con habilidades en traducción del inglés y pali. También estamos buscando voluntarios técnicos con habilidades en Flutter, Clojure, Rails, Docker y Terraform.\n\nPara conocer otras necesidades de voluntariado de Pariyatti, haga clic en el botón a continuación.",
      "empty_card": "Tarjeta vacía",
      "error": "Error",
      "feeds": "Noticias",
      "inspiration": "Inspiración",
      "language": "Idioma",
      "language_alternate": "Idioma alternativo",
      "languages": "Idiomas",
      "light_theme": "Tema claro",
      "nothing_bookmarked": "Aún no has marcado nada",
      "only_english": "Solo está disponible el inglés como idioma alternativo en este momento.",
      "pali_word": "Palabra en Pāli",
      "pali_word_of_the_day": "Palabra en Pāli del día",
      "security_and_privacy": "Seguridad y privacidad",
      "settings": "Ajustes",
      "share_dhamma_verse": "Compartir verso del Dhamma",
      "share_inspiration": "Compartir inspiración",
      "share_pali_word": "Compartir palabra en Pāli",
      "share_words_of_buddha": "Compartir palabras de Buda",
      "subscribe_to_newsletter": "Suscribirse al boletín",
      "system_default": "Predeterminado del sistema",
      "theme": "Tema",
      "today": "Hoy",
      "translation": "Traducción",
      "try_again_later": "Ha ocurrido un error. Por favor, inténtelo de nuevo más tarde.",
      "was_empty": "estaba vacío",
      "words_of_the_buddha": "Palabras de Buda diarias"
    },

    Language.srp: {
      "about_pariyatti": "О Паријатти",
      "account": "Налог",
      "app_name": "Паријатти",
      "bookmarks": "Обележивачи",
      "contact_pariyatti": "Контакт Паријатти",
      "could_not_launch": "Не могу да покренем",
      "dark_theme": "Тамна тема",
      "dhamma_verse": "Дхамма стих дана",
      "dhamma_verse_short": "Дхамма стих",
      "donate": "Донација",
      "donate_preamble": "Паријатти је независна америчка непрофитна организација 501(c)(3) и није део Випасана организације. Паријатти се осланја на комбинацију прихода од продаје и донација да би понудио своје услуге. Све донације су данак дељиве у складу са законом о данаку на приход у САД.\n\nАко желите да ваша донација буде подударена од стране вашег послодавца, захтевајте да то буде учињено за Паријатти (EIN 80-0038336).",
      "donate_time": "донирајте време",
      "donate_time_preamble": "Париатти се ослања на живо учешће наших присталица како би наставио наше програме услуга. Волонтери су добродошли да допринесу мобилној апликацији Парииатти или низу других Парииатти пројеката.\n\nТим за мобилне апликације тренутно тражи нетехничке волонтере са вештинама превођења са енглеског и пали. Такође тражимо техничке волонтере са вештинама у Флуттер, Цлојуре, Раилс, Доцкер и Терраформ.\n\nДа бисте сазнали више о Паријатијевим другим волонтерским потребама, кликните на дугме испод.",
      "empty_card": "Празна картица",
      "error": "Грешка",
      "feeds": "Фидови",
      "inspiration": "Надахнуће",
      "language": "Језик",
      "language_alternate": "Алтернативни језик",
      "languages": "Језици",
      "light_theme": "Светла тема",
      "nothing_bookmarked": "Још нисте обележили ништа",
      "only_english": "Само је енглески доступан као алтернативни језик у овој фази.",
      "pali_word": "Пали реч",
      "pali_word_of_the_day": "Пали реч дана",
      "security_and_privacy": "Сигурност и приватност",
      "settings": "Подешавања",
      "share_dhamma_verse":"Дели Дхамма стих",
      "share_inspiration": "Дели надахнуће",
      "share_pali_word": "Дели пали реч",
      "share_words_of_buddha":"Дели речи Буде",
      "subscribe_to_newsletter": "Претплатите се на новости",
      "system_default": "Системски подразумевани",
      "theme": "Тема",
      "today": "Данас",
      "translation": "Превод",
      "try_again_later": "Одбијање. Покушајте поново касније.",
      "was_empty": "било је празно",
      "words_of_the_buddha": "Дневне речи Буде",
    },

    Language.zho_hant: {
      "about_pariyatti": "關於Pariyatti",
      "account": "帳戶",
      "app_name": "Pariyatti",
      "bookmarks": "書籤",
      "contact_pariyatti": "聯繫Pariyatti",
      "could_not_launch": "無法啟動",
      "dark_theme": "暗黑主題",
      "dhamma_verse": "S.N. Goenka的每日法句",
      "dhamma_verse_short": "每日法句",
      "donate": "捐贈",
      "donate_preamble": "Pariyatti是一家獨立的美國501(c)(3)非營利組織，並不是正念組織的一部分。Pariyatti依靠銷售收入和捐款來提供其服務。根據美國稅法，所有捐款均可享受減稅優惠。\n\n如果您希望雇主匹配您的捐款，請為Pariyatti（EIN 80-0038336）提出申請。",
      "donate_time": "捐赠时间",
      "donate_time_preamble": "Pariyatti 依靠支持者的積極參與來繼續我們的服務計劃。 歡迎志願者為 Pariyatti 移動應用程序或各種其他 Pariyatti 項目做出貢獻。\n\n移動應用程序團隊目前正在尋找具有英語和巴利語翻譯技能的非技術志願者。 我們還在尋找具備 Flutter、Clojure、Rails、Docker 和 Terraform 技能的技術志願者。\n\n要了解 Pariyatti 的其他志願者需求，請單擊下面的按鈕。",
      "empty_card": "沒有內容",
      "error": "錯誤",
      "feeds": "訊息",
      "inspiration": "啟發",
      "language": "語言",
      "language_alternate": "其它語言",
      "languages": "語言選擇",
      "light_theme": "明亮主題",
      "nothing_bookmarked": "您還沒有書籤",
      "only_english": "目前僅提供英文作為替代語言",
      "pali_word": "Pāli詞語",
      "pali_word_of_the_day": "Pāli詞語之日",
      "security_and_privacy": "安全與隱私",
      "settings": "設定",
      "share_dhamma_verse":"分享每日法句",
      "share_inspiration": "分享啟發",
      "share_pali_word": "分享Pāli詞語",
      "share_words_of_buddha":"分享佛陀的話語",
      "subscribe_to_newsletter": "訂閱電子報",
      "system_default": "系統預設值",
      "theme": "主題",
      "today": "今天",
      "translation": "翻譯",
      "try_again_later": "發生錯誤，請稍後再試。",
      "was_empty": "沒有內容",
      "words_of_the_buddha": "佛陀的話語"
    },

  };

}

