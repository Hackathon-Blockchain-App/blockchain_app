import 'package:blockchain_app/entities/token.dart';
import 'package:blockchain_app/navigator.dart';

class Dependencies {
  String defaultFont = "Inter";
  static double countOfMoney = 264.83;
  // mocked
  static double tokenInUSD = 0.96763962;
  final AppNavigator navigator;
  static List<Token> tokenList = [
    Token(0, "ETH", 1, "assets/eth.png"),
    Token(152, "1inch", 0.33708553, "assets/1inch.png"),
  ];
  Dependencies(this.navigator);
}
