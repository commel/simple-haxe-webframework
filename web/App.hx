package web;

import php.Lib;

class App {

  static function main() {
    new App();
  } 

  public function new() {
    var params = php.Web.getParams();
    var name:Null<String> = params.exists("name") ? params.get("name") : "world";

    var data = { name: name } 
    var output = Template.render("hello", data);

    var rendered = Template.renderBase("main", output);

    Lib.print(rendered);
  }

}
