simple-haxe-webframework
========================

A Simple Haxe Webframework that produces PHP and Javascript

The directory "web" contains the page generation code, that will result in PHP-sources in the "export"-directory.
In the directory "js" you will find the Haxe sources to generate JQuery-Javascript-Sources that are integrated into the website automatically.

The "export"-directory contains a "templates"-directory that contains haxe-template-files. The "js" contains the generated javascript-sources.

To build the page run "haxe compile" in the project's root directory.

The index.php accepts an optional parameter "name", like this: index.php?name=whatever.
