/**
 * Module Loaders
 * Reference: http://webpack.github.io/docs/configuration.html#module-loaders
 * List: http://webpack.github.io/docs/list-of-loaders.html
 * This handles most of the magic responsible for converting modules
 */

// Initialize module
var path = require('path');
var nodeModules = path.resolve(__dirname, '../node_modules');

module.exports = function(mode) {
  var module = {
    preLoaders: [],
    loaders: [],
    noParse: []
  };
  // module.loaders.push(require('./module/es6.js')(mode));
  module.loaders.push(require('./module/coffee.js')(mode));
  module.loaders.push(require('./module/css.js')(mode));
  module.loaders.push(require('./module/asset.js')(mode));
  module.loaders.push(require('./module/json.js')(mode));
  if (mode.isTest) {
    // module.preLoaders.push(require('./module/instrument.js')(mode));
    module.loaders.push(require('./module/raw-html.js')(mode));
  } else {
    module.loaders.push(require('./module/ng-html.js')(mode));
  }
  // Do not parse minified angular.js file
  module.noParse.push(path.resolve(nodeModules, 'angular/angular.min.js'));
  module.noParse.push(path.resolve(nodeModules, 'ramda/dist/ramda.min.js'));
  return module;
}