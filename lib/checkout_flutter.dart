library checkout_flutter;

import 'package:flutter/services.dart';

///[enviroment] deciding which [Checkout.com] link will be used
enum Enviroment{ LIVE, SANDBOX }

///class for [Checkout.com] Flutter integration
class CheckoutFlutter {
  ///[key] that is used in functions to generate token, make payments and etc.
  String? apiPublicKey;

  ///type of enviroment used
  Enviroment? enviroment;

  ///method for generating token that is later used on server side to process payment
  String generateTokenForCardPayment(){
    if(enviroment == null){
      throw PlatformException(code: "404", message: "Enviroment is not set");
    }
    if(apiPublicKey == null){
      throw PlatformException(code: "404", message: "Api Public Key is not set");
    }
    return "";
  }
}
