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
      "about_pariyatti": "",
      "account": "",
      "app_name": "",
      "bookmarks": "",
      "contact_pariyatti": "",
      "could_not_launch": "",
      "dark_theme": "",
      "dhamma_verse": "",
      "dhamma_verse_short": "",
      "donate": "",
      "donate_preamble": "",
      "empty_card": "",
      "error": "",
      "feeds": "",
      "inspiration": "",
      "language": "",
      "language_alternate": "",
      "languages": "",
      "light_theme": "",
      "nothing_bookmarked": "",
      "only_english": "",
      "pali_word": "",
      "pali_word_of_the_day": "",
      "security_and_privacy": "",
      "settings": "",
      "share_inspiration": "",
      "share_pali_word": "",
      "subscribe_to_newsletter": "",
      "system_default": "",
      "theme": "",
      "today": "",
      "translation": "",
      "try_again_later": "",
      "was_empty": "",
      "words_of_the_buddha": "",
    },

    Language.ita: {
      "app_name": "",
      "nothing_bookmarked": "",
      "donate_preamble": "",
      "try_again_later": "",
      "today": "",
      "account": "",
      "donate": "",
      "share_inspiration": "",
      "share_pali_word": "",
      "translation": "",
      "bookmarks": "",
      "settings": "",
      "subscribe_to_newsletter": "",
      "contact_pariyatti": "",
      "security_and_privacy": "",
      "about_pariyatti": "",
      "feeds": "",
      "languages": "",
      "language": "",
      "language_alternate": "",
      "theme": "",
      "light_theme": "",
      "dark_theme": "",
      "system_default": "",
      "could_not_launch": "",
      "was_empty": "",
      "dhamma_verse_short": "Daily Dhamma Verse",
      "dhamma_verse": "",
      "empty_card": "",
      "inspiration": "",
      "pali_word": "",
      "pali_word_of_the_day": "",
      "only_english": "",
      "error": "",
      "words_of_the_buddha": "",
    },

    Language.lit: {
      "app_name": "",
      "nothing_bookmarked": "",
      "donate_preamble": "",
      "try_again_later": "",
      "today": "",
      "account": "",
      "donate": "",
      "share_inspiration": "",
      "share_pali_word": "",
      "translation": "",
      "bookmarks": "",
      "settings": "",
      "subscribe_to_newsletter": "",
      "contact_pariyatti": "",
      "security_and_privacy": "",
      "about_pariyatti": "",
      "feeds": "",
      "languages": "",
      "language": "",
      "language_alternate": "",
      "theme": "",
      "light_theme": "",
      "dark_theme": "",
      "system_default": "",
      "could_not_launch": "",
      "was_empty": "",
      "dhamma_verse_short": "Daily Dhamma Verse",
      "dhamma_verse": "",
      "empty_card": "",
      "inspiration": "",
      "pali_word": "",
      "pali_word_of_the_day": "",
      "only_english": "",
      "error": "",
      "words_of_the_buddha": "",
    },

    Language.por: {
      "app_name": "",
      "nothing_bookmarked": "",
      "donate_preamble": "",
      "try_again_later": "",
      "today": "",
      "account": "",
      "donate": "",
      "share_inspiration": "",
      "share_pali_word": "",
      "translation": "",
      "bookmarks": "",
      "settings": "",
      "subscribe_to_newsletter": "",
      "contact_pariyatti": "",
      "security_and_privacy": "",
      "about_pariyatti": "",
      "feeds": "",
      "languages": "",
      "language": "",
      "language_alternate": "",
      "theme": "",
      "light_theme": "",
      "dark_theme": "",
      "system_default": "",
      "could_not_launch": "",
      "was_empty": "",
      "dhamma_verse_short": "Daily Dhamma Verse",
      "dhamma_verse": "",
      "empty_card": "",
      "inspiration": "",
      "pali_word": "",
      "pali_word_of_the_day": "",
      "only_english": "",
      "error": "",
      "words_of_the_buddha": "",
    },

    Language.spa: {
      "app_name": "",
      "nothing_bookmarked": "",
      "donate_preamble": "",
      "try_again_later": "",
      "today": "",
      "account": "",
      "donate": "",
      "share_inspiration": "",
      "share_pali_word": "",
      "translation": "",
      "bookmarks": "",
      "settings": "",
      "subscribe_to_newsletter": "",
      "contact_pariyatti": "",
      "security_and_privacy": "",
      "about_pariyatti": "",
      "feeds": "",
      "languages": "",
      "language": "",
      "language_alternate": "",
      "theme": "",
      "light_theme": "",
      "dark_theme": "",
      "system_default": "",
      "could_not_launch": "",
      "was_empty": "",
      "dhamma_verse_short": "Daily Dhamma Verse",
      "dhamma_verse": "",
      "empty_card": "",
      "inspiration": "",
      "pali_word": "",
      "pali_word_of_the_day": "",
      "only_english": "",
      "error": "",
      "words_of_the_buddha": "",
    },

    Language.srp: {
      "app_name": "",
      "nothing_bookmarked": "",
      "donate_preamble": "",
      "try_again_later": "",
      "today": "",
      "account": "",
      "donate": "",
      "share_inspiration": "",
      "share_pali_word": "",
      "translation": "",
      "bookmarks": "",
      "settings": "",
      "subscribe_to_newsletter": "",
      "contact_pariyatti": "",
      "security_and_privacy": "",
      "about_pariyatti": "",
      "feeds": "",
      "languages": "",
      "language": "",
      "language_alternate": "",
      "theme": "",
      "light_theme": "",
      "dark_theme": "",
      "system_default": "",
      "could_not_launch": "",
      "was_empty": "",
      "dhamma_verse_short": "Daily Dhamma Verse",
      "dhamma_verse": "",
      "empty_card": "",
      "inspiration": "",
      "pali_word": "",
      "pali_word_of_the_day": "",
      "only_english": "",
      "error": "",
      "words_of_the_buddha": "",
    },

    Language.zho_hant: {
      "app_name": "",
      "nothing_bookmarked": "",
      "donate_preamble": "",
      "try_again_later": "",
      "today": "",
      "account": "",
      "donate": "",
      "share_inspiration": "",
      "share_pali_word": "",
      "translation": "",
      "bookmarks": "",
      "settings": "",
      "subscribe_to_newsletter": "",
      "contact_pariyatti": "",
      "security_and_privacy": "",
      "about_pariyatti": "",
      "feeds": "",
      "languages": "",
      "language": "",
      "language_alternate": "",
      "theme": "",
      "light_theme": "",
      "dark_theme": "",
      "system_default": "",
      "could_not_launch": "",
      "was_empty": "",
      "dhamma_verse_short": "Daily Dhamma Verse",
      "dhamma_verse": "",
      "empty_card": "",
      "inspiration": "",
      "pali_word": "",
      "pali_word_of_the_day": "",
      "only_english": "",
      "error": "",
      "words_of_the_buddha": "",
    },

  };

}

