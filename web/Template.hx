package web;

class Template {

  public static function render(name:String, data:Dynamic):String {
    var t = new haxe.Template( loadTemplate(name) );
    return t.execute(data);
  }

  private static function loadTemplate(name:String) {
    return sys.io.File.getContent('../templates/$name.html');
  }

}
