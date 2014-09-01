package web;

import php.Lib;

class App {

  static function main() {
    new App();
  } 

  static function loadTemplate(file:String):String {
    return sys.io.File.getContent('../templates/$file');
  }

  public function new() {
    var m = new haxe.Template(loadTemplate("main.html"));
    var t = new haxe.Template(loadTemplate("hello.html"));

    var params = php.Web.getParams();
    var name:Null<String> = params.exists("name") ? params.get("name") : "";

    var data = { name: name } 
    var output = t.execute(data);

    var rendered = m.execute( { yield: output } );

    Lib.print(rendered);
  }

}
