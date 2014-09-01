package js;

import jQuery.*;

class App {

  static function main() {
    new App();
  }

  public function new() { 
    new JQuery(function():Void {
      trace("Hello world");
    });
  }  

}
