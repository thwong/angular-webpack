/**
 * Module Loaders
 * Reference: http://webpack.github.io/docs/configuration.html#module-loaders
 * List: http://webpack.github.io/docs/list-of-loaders.html
 * This handles most of the magic responsible for converting modules
 */

// Initialize module
module.exports = function(mode) {
  var module = {
    preLoaders: [],
    loaders: []
  };
  module.loaders.push(require('./module/es6.js')(mode));
  module.loaders.push(require('./module/coffee.js')(mode));
  module.loaders.push(require('./module/css.js')(mode));
  module.loaders.push(require('./module/asset.js')(mode));
  module.loaders.push(require('./module/ng-html.js')(mode));
  if (mode.isTest) {
    module.preLoaders.push(require('./module/instrument.js')(mode));
  }
  return module;
}