(function () { "use strict";
var js = {};
js.App = function() {
	new $(function() {
		console.log("Hello world");
	});
};
js.App.main = function() {
	new js.App();
};
js.App.main();
})();
